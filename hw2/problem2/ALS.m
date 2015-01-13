function [U,M,RMSE] = ALS(k, maxiter, R, lambda, testR)
% matrix factorization via alternating minimization
%
% [U, M] = ALS(k, maxiter, R, lambda, Rt)
%
% INPUT:
%   k       - number of factors in the matrix factorization
%   maxiter - maximum number of iterations
%   R       - (training) ratings matrix to be factorized
%   lambda  - regularization term
%   testR   - test ratings matrix
%
% OUTPUT:
%   U  - k by nr matrix
%   M  - k by nc matrix
%   R is approximated by U'*M
totalTime = 0;

[nr,nc] = size(R);
[Ix,Jx,xx] = find(R);
nnzs = find(R);
[Iy,Jy,yy] = find(R');

cc = histc(Jx,1:nc); % number of nonzeros in each column
rc = histc(Jy,1:nr); % number of nonzeros in each row

% randomly initialize the matrix U and M
U = rand(k,nr); 
M = rand(k,nc);

obj = zeros(maxiter,1);
relerr = 1e-6;
Pred = zeros(numel(xx),1);

for t = 1:maxiter
    fprintf('iter (%d):\n',t);
	fprintf('  minimize M while fixing U ...');
    s = cputime;
    j = 1;
	for i = 1:nc
		if cc(i)>0
			subU = U(:,Ix(j:j-1+cc(i)));
            M(:,i) = (lambda*eye(k)+subU*subU')\(subU*xx(j:j-1+cc(i)));
            %M(:,i) = cd_ridge(xx(j:j-1+cc(i)), subU', lambda);
            j = j+cc(i);
		else 
			M(:,i) = zeros(k,1);
		end
	end
    fprintf(' %.2f seconds\n',cputime-s);
    totalTime = totalTime + (cputime - s);
	fprintf('  minimize U while fixing M ...');
    s = cputime;
    j = 1;
    for i = 1:nr
		if rc(i)>0
			subM = M(:,Iy(j:j-1+rc(i)));
            U(:,i) = (lambda*eye(k)+subM*subM')\(subM*yy(j:j-1+rc(i)));
            %U(:,i) = cd_ridge(yy(j:j-1+rc(i)), subM', lambda);
            j = j+rc(i);
		else
			U(:,i) = zeros(k,1);
		end
    end
    fprintf(' %.2f seconds\n',cputime-s);
    totalTime = totalTime + (cputime - s);
    for i=1:numel(Ix)
		Pred(i) = U(:,Ix(i))'*M(:,Jx(i));
	end 
	res = sum((xx - Pred).^2);
    obj(t) = .5*(res+lambda*(norm(U,'fro')^2+norm(M,'fro')^2));
    train = sqrt(res/length(xx));
    fprintf('obj=%.4f rmse(train)=%.4f\n',obj(t),train);
    if t > 1
        if ((obj(t-1)-obj(t))/obj(t-1) < relerr)
            break;
        end
    end
end
clear Pred
[P.I,P.J,P.probe] = find(testR);
Pred = zeros(numel(P.probe),1);
for i=1:numel(P.probe)
	Pred(i) = U(:,P.I(i))'*M(:,P.J(i));
end 
RMSE = sqrt(sum((P.probe-Pred).^2)/length(P.probe));
fprintf('rmse(probe)=%.4f\n',RMSE);
fprintf('total time taken=%.2f\n',totalTime);
end % main function
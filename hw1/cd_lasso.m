%problem 2 part (b): coordinate descent for lasso regression
function w = cd_lasso(y, X, lambda, t_max)
	[n d] = size(X);
	w = zeros(d, 1);

	t=0;
	while t <= t_max
		j = mod(t, d) + 1;
		u = update(X, w, y, lambda, j);
		w(j) = sign(u)*max(abs(u) - lambda, 0);
		t = t + 1;
	end
end

%http://web.stanford.edu/~hastie/TALKS/glmnet.pdf, slide #18
function u = update(X, w, y, l, j)
	[n d] = size(X);
	r_j = zeros(n, 1);
	for i=1:n
		s = 0;
		for k=1:d
			if k ~= j
				s = s + X(i,k)*w(k);
			end
		end
		r_j(i) = y(i) - s;
	end

	u = 1/n * dot(X(:,j), r_j);
end

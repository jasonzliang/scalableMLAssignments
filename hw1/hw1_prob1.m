f = load('hw1-data/small.mat'); R = f.R; Rt = f.Rt;

% problem 1 part (c): determine optimal value for lambda
R_nonzero_indices = find(R);
kFold = 10; n = 2;
indices = crossvalind('Kfold',length(R_nonzero_indices),kFold);
values = [10^-1, 10^-2, 10^-3, 10^-4];
for lambda=values
	averageRMSE = 0.0;
	for i=1:n
		test_indices = (indices == i);
		train_indices = ~test_indices;
		R_train_indices = R_nonzero_indices(train_indices);
		R_test_indices = R_nonzero_indices(test_indices);

		R_train = R;
		R_train(R_test_indices) = 0.0;

		[U,M] = ALS(R_train, lambda, 10, 10);
		R_s = U'*M;

		rmse = 0;
		for j=1:length(R_test_indices)
			e = (R(R_test_indices(j)) - R_s(R_test_indices(j))).^2;
			rmse = rmse + e;
		end
		rmse = sqrt(rmse/length(R_test_indices));
		averageRMSE = averageRMSE + rmse;
	end
	averageRMSE = averageRMSE / n;
	disp(strcat('lambda: ', num2str(lambda), ' rmse: ', num2str(averageRMSE)));
end

%problem 1 part (c): find RMSE on test data
optimalLambda = 10;
tic; [U,M] = ALS(Rt, optimalLambda, 10, 10); toc;
%R_s = U'*M;
U_t = U';
Rt_nonzero_indices = find(Rt);
[r,c] = ind2sub(size(Rt), Rt_nonzero_indices);
rmse = 0.0;
for j=1:length(r)
	e = (Rt(r(j), c(j)) - U_t(r(j),:)*M(:,c(j))).^2;
	rmse = rmse + e;
end
rmse = sqrt(rmse/length(Rt_nonzero_indices));
disp(strcat('small test data set rmse: ', num2str(rmse)));

%problem 1 part (d): try lambda on medium and large datasets
f = load('hw1-data/medium.mat'); R = f.R; Rt = f.Rt;
optimalLambda = 10;
tic; [U,M] = ALS(Rt, optimalLambda, 10, 10); toc;
%R_s = U'*M;
U_t = U';
Rt_nonzero_indices = find(Rt);
[r,c] = ind2sub(size(Rt), Rt_nonzero_indices);
rmse = 0.0;
for j=1:length(r)
	e = (Rt(r(j), c(j)) - U_t(r(j),:)*M(:,c(j))).^2;
	rmse = rmse + e;
end
rmse = sqrt(rmse/length(Rt_nonzero_indices));
disp(strcat('medium test data set rmse: ', num2str(rmse)));

f = load('hw1-data/large.mat'); R = f.R; Rt = f.Rt;
optimalLambda = 10;
tic; [U,M] = ALS(Rt, optimalLambda, 10, 10); toc;
% R_s = U'*M;
U_t = U';
Rt_nonzero_indices = find(Rt);
[r,c] = ind2sub(size(Rt), Rt_nonzero_indices);
rmse = 0.0;
for j=1:length(r)
	e = (Rt(r(j), c(j)) - U_t(r(j),:)*M(:,c(j))).^2;
	rmse = rmse + e;
end
rmse = sqrt(rmse/length(r));
disp(strcat('large test data set rmse: ', num2str(rmse)));
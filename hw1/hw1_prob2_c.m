%problem 2 part (c): try ALS with cd_ridge on movie rating datasets
f = load('hw1-data/small.mat'); R = f.R; Rt = f.Rt;
optimalLambda = 10;
tic; [U,M] = ALS_cd_ridge(Rt, optimalLambda, 10, 10); toc;
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

f = load('hw1-data/medium.mat'); R = f.R; Rt = f.Rt;
optimalLambda = 10;
tic; [U,M] = ALS_cd_ridge(Rt, optimalLambda, 10, 10); toc;
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
tic; [U,M] = ALS_cd_ridge(Rt, optimalLambda, 10, 10); toc;
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
disp(strcat('large test data set rmse: ', num2str(rmse)));
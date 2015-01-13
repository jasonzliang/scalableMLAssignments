%problem 2 part (a),(b): implement and test cd_ridge, cd_lasso
f = load('hw1-data/bodyfat.mat');
y = f.y; X = f.X; yt = f.yt; Xt = f.Xt;
[n d] = size(X);
[nt dt] = size(Xt);

values = [10, 1, 0.1];

disp('cd_ridge');
disp('training');
for lambda=values
	w = cd_ridge(y, X, lambda, 20*d);
	rmse = 0;
	for i=1:n
		rmse = rmse + (y(i) - X(i,:)*w).^2;
	end
	rmse = sqrt(rmse/n);
	disp(strcat('lambda: ', num2str(lambda), ' rmse: ', num2str(rmse)));
end

disp('testing');
for lambda=values
	w = cd_ridge(yt, Xt, lambda, 20*dt);
	rmse = 0;
	for i=1:nt
		rmse = rmse + (yt(i) - Xt(i,:)*w).^2;
	end
	rmse = sqrt(rmse/nt);
	disp(strcat('lambda: ', num2str(lambda), ' rmse: ', num2str(rmse)));
end

disp('cd_lasso');
disp('training');

for lambda=values
	w = cd_lasso(y, X, lambda, 20*d);
	rmse = 0;
	for i=1:n
		rmse = rmse + (y(i) - X(i,:)*w).^2;
	end
	rmse = sqrt(rmse/n);
	disp(strcat('lambda: ', num2str(lambda), ' rmse: ', num2str(rmse)));
end

disp('testing');
for lambda=values
	w = cd_lasso(yt, Xt, lambda, 20*dt);
	rmse = 0;
	for i=1:nt
		rmse = rmse + (yt(i) - Xt(i,:)*w).^2;
	end
	rmse = sqrt(rmse/nt);
	disp(strcat('lambda: ', num2str(lambda), ' rmse: ', num2str(rmse)));
end

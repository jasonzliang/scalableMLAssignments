%problem 2 part (a): coordinate descent for ridge regression
function w = cd_ridge(y, X, lambda, t_max)
	[n d] = size(X);
	w = zeros(d, 1);
	demoninator = zeros(d, 1);
	for i=1:d
		demoninator(i) = lambda + sum(X(:,i).^2);
	end

	t=0; learn_rate = 0.005;
	while t <= t_max
		j = mod(t, d) + 1;
		u = update(X, w, y, lambda, j, demoninator);
		w(j) = w(j) + learn_rate*u;
		t = t + 1;
	end
end

function u = update(X, w, y, lambda, j, demoninator)
	[n d] = size(X);
	s = 0;
	for i=1:n
		s = s + X(i,j)*(X(i,:)*w + y(i)) + lambda*w(j);
	end
	u = (-1*s)/demoninator(j);
end
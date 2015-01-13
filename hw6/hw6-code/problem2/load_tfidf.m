function [X, compactIndices, labels] = load_tfidf(file)
	load([file '.txt']);
	X = spconvert(eval(file));
	X = X';
	indices = any(X,2);
	compactIndices = find(indices);
	X = X(compactIndices,:);
	[N D] = size(X);
	% keyboard
	labels = zeros(N,1);
	for i=1:N
		if compactIndices(i) <= 10000
			labels(i) = 1;
		elseif compactIndices(i) <= 20000
			labels(i) = 2;
		else
			labels(i) = 3;
		end
	end
	% X = full(X);
end

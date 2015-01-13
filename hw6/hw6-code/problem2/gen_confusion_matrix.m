function [C, a1, C2, a2, X, labels, indices] = gen_confusion_matrix(file)
	C = zeros(3,3);
	C2 = zeros(3,3);
	[X, indices, labels] = load_tfidf(file);
	% size(X)	

	tic;
	[c2, a2] = incremental_kmeans(X, 3, 0.01);
	toc;
	C = confusionmat(labels, a2);

	tic;
	[c1, a1] = batch_kmeans(X, 3, 0.01);
	toc;
	C2 = confusionmat(labels, a1);

end

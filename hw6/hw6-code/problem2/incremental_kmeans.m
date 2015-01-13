function [centroids,assignment] = incremental_kmeans(X,K,tol)
  % matlabpool('open',16);
	X = normr(X);
  [N, D] = size(X);
	% for i=1:N
	% 	disp(norm(X(i,:)));
	% end
  assignment = randi([1 K], N, 1);
  centroids = zeros(K,D);
  s = zeros(K,1);
  S_mat = zeros(N,K);
  currMaxGain = 1e308;
  t = 0;

  %calculate cluster centroid and quality
  for i=1:K
    centroid_points = X(assignment == i,:);
    s_temp = sum(centroid_points,1);
    s(i) = norm(s_temp);
    centroids(i,:) = s_temp/s(i);
  end

  %calculate similarity matrix
	S_mat = X*centroids';

  % for i=1:N
  % 	for j=1:K
  % 		S_mat(i,j) = X(i,:) * centroids(j,:)';
  % 	end
  % end

  while currMaxGain > tol
		maxGain = -1e308;
		maxGainCluster = -1;
		maxGainX_i = -1;
		% tic
	  for i=1:N
	  	for j=1:K
	  		if assignment(i) == j
	  			continue;
	  		end
	  		q_i = s(assignment(i));
	  		q_j = s(j);

	  		q_i2 = sqrt(q_i^2 - 2*q_i*S_mat(i, assignment(i)) + 1);
	  		q_j2 = sqrt(q_j^2 + 2*q_j*S_mat(i, j) + 1);

	  		gain = q_i2 + q_j2 - (q_i + q_j);
	  		if gain > maxGain
	  			maxGain = gain;
	  			maxGainX_i = i;
	  			maxGainCluster = j;
	  		end
	  	end
	  end
    % toc 
	  %update cluster assignments
	  oldAssignment = assignment(maxGainX_i);
	  newAssignment = maxGainCluster;
	  assignment(maxGainX_i) = newAssignment;
	  % disp(maxGainX_i);
	  % disp(maxGain);
	  % disp(oldAssignment);
	  % disp(newAssignment);
	  %update cluster centroids and quality
	  % clusters = [oldAssignment newAssignment];
	  % q_i = s(oldAssignment); q_j = s(newAssignment);
	  % new_qualities = [sqrt(q_i^2 + 2*q_i*S_mat(maxGainX_i, oldAssignment) + 1), ...
	  % 								 sqrt(q_j^2 + 2*q_j*S_mat(maxGainX_i, newAssignment) + 1)];
	  % tic
	  for i=[oldAssignment newAssignment]
	  	centroid_points = X(assignment == i,:);
	    s_temp = sum(centroid_points,1);
	    s(i) = norm(s_temp);
	    centroids(i,:) = s_temp/s(i);
		end
    % toc
    % tic
		%update similiarity matrix
		%for j=[oldAssignment newAssignment]
		%  for i=1:N
		%  	S_mat(i,j) = X(i,:) * centroids(j,:)';
		%  end
		%end
		S_mat = X*centroids';
    % toc
    % keyboard
		currMaxGain = maxGain;
		t = t + 1;
		disp(strcat('iteration: ', num2str(t), ' current max gain: ', num2str(currMaxGain),...
			' objective: ', num2str(sum(s))));
	end
	% matlabpool('close');
end

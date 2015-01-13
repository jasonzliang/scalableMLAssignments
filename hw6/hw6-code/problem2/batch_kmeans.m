function [centroids,assignment] = batch_kmeans(X,K,tol)
   % matlabpool('open',16);
   X = normr(X);
   [N,D] = size(X);
   assignment = randi([1 K], N, 1);
   centroids = zeros(K,D);
   S = zeros(K,1);
   prevQ = 1e308;
   t = 0;

   for i=1:K
     centroid_points = X(assignment == i,:);
     S_temp = sum(centroid_points,1);
     S(i) = norm(S_temp);
     centroids(i,:) = S_temp/S(i);
   end
   currQ = sum(S);

   while abs(currQ - prevQ) > tol
      prevQ = currQ;

      parfor i=1:N
         bestCosSim = -1e308;
         bestAssign = -1;
         for j=1:K
            cosSim = dot(X(i,:),centroids(j,:));
            if cosSim > bestCosSim
               bestCosSim = cosSim;
               bestAssign = j;
            end
         end
         assignment(i) = bestAssign;
      end

      for i=1:K
        centroid_points = X(assignment == i,:);
        S_temp = sum(centroid_points,1);
        S(i) = norm(S_temp);
        centroids(i,:) = S_temp/S(i);
      end
      currQ = sum(S);
      t = t + 1;
      disp(strcat('iteration: ', num2str(t), ' current Q: ', num2str(currQ), ' change in Q: ', num2str(abs(currQ - prevQ))));
   end
   % matlabpool('close');
end
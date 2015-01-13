%problem 2 part (c): implement ALS with cd_ridge
function [U,M] = ALS(R, lambda, k, numIterations)
	cd_ridgeIter = 20;
	[u,m] = size(R);
	U = rand(k,u);
	M = rand(k,m);
	lambda_I = lambda*eye(k);

	R_col = cell(m); R_row = cell(u);
	R_col_i = cell(m); R_row_i = cell(u);
	for i=1:m
		indices = find(R(:,i));
		R_col{i} = full(R(indices,i));
		R_col_i{i} = indices;
	end
	for i=1:u
		indices = find(R(i,:));
		R_row{i} = full(R(i,indices))';
		R_row_i{i} = indices;
	end

	for i=1:numIterations
		%fix U, solve for M
		for j=1:m
			r_j = R_col{j};%d*1 matrix
			d = length(R_col_i{j});%number nonzero entries in r_j
			if d == 0
				M(:,j) = zeros(k,1);
			else
				u_j = U(:, R_col_i{j})';%d*k matrix
				m_j = cd_ridge(u_j'*r_j, u_j'*u_j + lambda_I, lambda, cd_ridgeIter*k);%k*1 matrix
				M(:,j) = m_j;
			end
		end

		%fix M, solve for U
		for j=1:u
			r_j = R_row{j};%d*1 matrix
			d = length(R_row_i{j});%number nonzero entries in r_j
			if d == 0
				U(:,j) = zeros(k,1);
			else
				m_j = M(:, R_row_i{j})';%d*k matrix
				u_j = cd_ridge(m_j'*r_j, m_j'*m_j + lambda_I, lambda, cd_ridgeIter*k);%k*1 matrix
				U(:,j) = u_j;
			end
		end
	end
end

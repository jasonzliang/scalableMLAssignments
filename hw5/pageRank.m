function pageRank(G,alpha)
	[m n] = size(G);
	c = sum(G,1);
	k = find(c~=0);
	D = sparse(k,k,1./c(k),n,n);
	e = ones(n,1);

	elapsed_time = 0;
	G = (1-alpha)*G*D;
	z = (alpha*(c~=0) + (c==0))/n;
	x = e/n;

	for i=1:50
		c = clock; start_time = c(6);
		
		x = G*x + e*(z*x);

		c = clock; end_time = c(6);
		elapsed_time = elapsed_time + (end_time - start_time);
		if (mod(i,5) == 0)
			disp(strcat('iter: ', num2str(i), ' wall time: ', num2str(elapsed_time)));
		end
	end

	[B,ind] = sort(x, 'descend');

	for i=1:10
		disp(strcat('rank: ', num2str(i), ' node: ', num2str(ind(i)), ' pageRank: ', num2str(B(i))));
	end

end

function computeCentrality(mat)
	[rows, cols] = size(mat);
	x = ones(rows,1);
	x=x./norm(x);
	elapsed_time = 0;
	for i=1:50
		c = clock; start_time = c(6);
		
		x = mat*x;
		x = x./norm(x);

		c = clock; end_time = c(6);
		elapsed_time = elapsed_time + (end_time - start_time);
		lambda = dot(mat*x, x);
		disp(strcat('iter: ', num2str(i), ' wall time: ', num2str(elapsed_time), ' lambda: ', num2str(lambda)));
	end
end

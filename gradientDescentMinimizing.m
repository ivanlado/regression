function betas = gradientDescentMinimizing(x,y, alpha, nItter)
  x = mapFeature(x, 3);
  fprintf("Optimised betas using gradient descent algorithm:\n");
  x = [ones(length(x),1) scalling(x(:, 2:end))];
  [betas, costFunctionRecord] = gradientDescent(x, scalling(y), iniBetas(x), alpha, nItter);
endfunction

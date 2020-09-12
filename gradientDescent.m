function [betas, costFunctionRecord] = gradientDescent(x,y, betas, alpha, nItter)
  costFunctionRecord = [];
  for itter = 1:nItter
    m = length(x);
    betas = betas - (alpha/m)* (sum(repmat(x*betas-y, 1, size(x, 2)).*x))';
    %costFunctionRecord = costFunction(x, y, betas);
  endfor
endfunction

function cost = costFunction(x, y, betas, lambda)
  cost = mean((x * betas - y).^2 + lambda*(betas'*betas));
endfunction

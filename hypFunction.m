function predictedValue = hypFunction(x, betas)
  
  predictedValue = mapFeature(x, length(betas)-1) * betas;
endfunction

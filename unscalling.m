function x = unscalling(x, xData = x)
  %with respect to xData dataset.
  x = x*std(xData) + mean(xData);
endfunction

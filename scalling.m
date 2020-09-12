function x = scalling(x, xData = x)
  %with respect to xData dataset.
  x = (x-mean(xData))./std(xData);
  
endfunction

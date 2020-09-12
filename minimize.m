function betas = minimize(x, y, degree, lambda, print = 0)
  x = mapFeature(x, degree);
  betas = fminsearch(@(b)(costFunction(x, y, b, lambda)), iniBetas(x));
  if print
    fprintf("Optimised betas using fminunc Octave's function:\n");
    betas
  endif
endfunction

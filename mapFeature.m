function xMapped = mapFeature(x, degree)
  x = addX0(x);
  exponents = exponents(size(x,2), degree);
  xMapped = [];
  for i = 1:length(x)
      aux = [];
    for j = 1:length(exponents)
      aux = [aux, prod([x(i,:).^exponents(j,:)])];
    endfor
      xMapped = [xMapped; aux];
      clear aux;
  endfor
endfunction
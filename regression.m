clear; close all; clc

dataFileName = 'data2.txt';
data = load(dataFileName);
x = data(:, 1:end-1);
y = data(:, end);

topDegree = 10;
degree = 0;
lambda = 1;

costs = [];
for degree = 1:topDegree
  betas = minimize(x, y, degree, lambda);
  costs = [costs, costFunction(mapFeature(x, degree), y, betas, lambda)];
endfor

costs
degree = find(costs == min(costs))
betas = minimize(x, y, degree, lambda, 1);

if (size(x, 2) == 1)
  plot(x, y, 'r.');
  hold on;
  plot(x, hypFunction(x, betas), 'b-');
  hold off;
endif
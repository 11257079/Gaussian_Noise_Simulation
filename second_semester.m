clear all; close all; clc;

% Parameters
mx = 0; my = 0;
sigmax = 2; sigmay = 3;
N = 1e4;

% Generate Gaussian random samples
x = mx + sigmax*randn(N,1);
y = my + sigmay*randn(N,1);
z = x - y;

% Plot histograms (PDF-like visualization)
figure;
hold on;
histogram(x, 'Normalization', 'pdf', 'FaceColor', 'r', 'FaceAlpha', 0.5);
histogram(y, 'Normalization', 'pdf', 'FaceColor', 'g', 'FaceAlpha', 0.5);
histogram(z, 'Normalization', 'pdf', 'FaceColor', 'y', 'FaceAlpha', 0.5);
hold off;

xlabel('Value');
ylabel('Probability Density');
legend('x \sim N(0,2^2)', 'y \sim N(0,3^2)', 'z = x - y');
title('Distributions of x, y, and z = x - y');
grid on;

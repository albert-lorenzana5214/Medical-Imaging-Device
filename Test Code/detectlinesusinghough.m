clc; close all; clear all

a = imread('original.jpg');
I = rgb2gray(a);
imshow(I)

figure
BW = edge(I, 'canny');
imshow(BW)

%[H,theta,rho] = hough(BW);

%{
figure
imshow(imadjust(rescale(H),[],...
    'XData',theta,...
    'YData',rho,...
    'InitialMagnification','fit'));
xlabel('\theta (degrees)')
ylabel('\rho')
axis on
axis normal
hold on
colormap(gca,hot)
%}
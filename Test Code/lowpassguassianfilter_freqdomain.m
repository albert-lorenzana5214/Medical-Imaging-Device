clc; clear all; close all;

a = imread('original.jpg');
a = rgb2gray(a);
a= double(a);

g = fspecial('gaussian', size(a),10);
max(g(:))

g1=mat2gray(g);
max(g1(:))

af=fftshift(fft2(a));
ag1=a.*g1;
fftshow(ag1)

ag1=af.*g1;
fftshow(ag1)
agli=ifft2(ag1);
ifftshow(agli);

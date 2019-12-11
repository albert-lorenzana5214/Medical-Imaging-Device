clc; clear all; close all;

a = imread('original.jpg');
im = rgb2gray(a);
im = double(im);
fftlogim = fft2(log(im+0.01));

f=butterhp(a,15,1);
c=fftlogim.*f;
h=real(ifft2(c));
figure,imshow(h)
h1=exp(h);
ifftshow(h1)
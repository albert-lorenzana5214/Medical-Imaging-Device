clc; clear all; close all;

a = imread('original.jpg');
a = rgb2gray(a);

hb=butterlp(a,100,2);
af=fftshift(fft2(a));
%fftshow(af);
afhb=af.*hb;
fftshow(afhb)

afhb=ifft2(afhb);
ifftshow(afhb)
clc; clear all; close all;
[x,y]=meshgrid(-492:491,-322:322);
z=sqrt(x.^2+y.^2);
a = imread('original.jpg');
a = rgb2gray(a);
af=fftshift(fft2(a));

%{
c=z>15;
hp=af.*c;
fftshow(hp)
hpi=ifft2(hp);
ifftshow(hpi)

c=z>50;
hp=af.*c;
fftshow(hp)
hpi=ifft2(hp);
ifftshow(hpi)
%}

c=z>5;
hp=af.*c;
fftshow(hp)
hpi=ifft2(hp);
ifftshow(hpi)
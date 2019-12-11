clc; clear all; close all;
a = imread('original.jpg');
a = rgb2gray(a);

af = fftshift(fft2(a));
figure,imshow(af);

fftshow(af)

[x,y]=meshgrid(-492:491,-322:322);
z=sqrt(x.^2+y.^2);
c=z<15;

size(af)
size(c)
af1=af.*c;
fftshow(af1)
afli = ifft2(af1);
ifftshow(afli)

c=z<5;
af1=af.*c;
fftshow(af1)
afli=ifft2(af1);
ifftshow(afli)

c=z<40;
af1=af.*c;
fftshow(af1)
afli=ifft2(af1);
ifftshow(afli)

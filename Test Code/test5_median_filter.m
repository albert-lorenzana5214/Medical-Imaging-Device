clc; clear all; close all;
a = imread('original.jpg');
i = rgb2gray(a);
isp=imnoise(i,'salt & pepper', 0.1);
figure, imshow(i);
figure, imshow(isp);
a = fspecial('average');
a
a1=filter2(a,isp);
figure,imshow(uint8(a1));
med = medfilt2(isp);
figure,imshow(med);



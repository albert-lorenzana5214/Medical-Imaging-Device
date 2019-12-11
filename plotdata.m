clc
%Remove items from workspace, freeing up system memory
clear all 
%Remove figures
close all
%read image
%img=imread('C:/Users/AF/Documents/Nexus/Venture/Script/test.jpg');
%display image
figure,imshow(img);
%convert image to grayscale
I=rgb2gray(img);
figure,imshow(I),title('Grayscale image'); 
%applying median filter to remove noise
K = medfilt2(I);
figure,imshow(K), title('median filtering');
%applying CLAHE
J = adapthisteq(I,'clipLimit',0.05,'Distribution','rayleigh');
figure,imshow(J), title('CLAHE');
%median filtering to remove the noise
K1 = medfilt2(J);
figure,imshow(K1), title('median filtering2');
%blurring images for accuracy
%Adaptive thresholding
T = adaptthresh(K1, 0.7);
BW = imbinarize(K1,T);
figure, imshow(BW), title('Adaptive threshold')
%T1 = adaptthresh(K1,0.5,'ForegroundPolarity','dark');
%figure,imshow(T1), title('foreground');
%BW = imbinarize(K1,T1);
%figure,imshow(BW), title('new thresholding');
se1 = strel('line',11,90);
erodedBW = imdilate(BW,se1);
figure, imshow(erodedBW,[]), title('dilated image');
BW3 = bwperim(erodedBW);
figure, imshow(BW3,[]),title('perimeter extraction');
C = imfuse(img,BW3,'blend','Scaling','joint');
figure, imshow(C), title('fusing images');
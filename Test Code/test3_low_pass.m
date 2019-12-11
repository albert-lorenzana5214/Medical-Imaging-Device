clc; close all;
i = imread('original.jpg');
i = rgb2gray(a);
f = ones(3,3)/9;
f
i1=filter2(f,i,'same');
imshow(i1/255);
figure,imshow(i);

f1 = fspecial('average',[3,3]);
i2=filter2(f1,i,'same');
figure, imshow(i2/255);

i2 = filter2(f1,i,'valid');
figure,imshow(i2/255);

i2=filter2(f1,i,'full');
figure,imshow(i2/255);

f3 = fspecial('average',11);
i3= filter2(f3,i,'same');
figure,imshow(i3/255);

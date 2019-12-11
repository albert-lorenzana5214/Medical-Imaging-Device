clc; close all; clear all

a = imread('original.jpg');
m1 = rgb2gray(a);
size(m1)

x1=edge(m1,'Canny');

%%%%%%%%%%below for Sobel Filter%%%%%%
m2=double(m1);

f1=[-1 -2 1;0 0 0;1 2 -1];
[r,c]=size(m1);
OUT = zeros(r-3,c-3);
for q1=1:(r-3)
    for p1=1:(c-3)
        m1=m2(q1:(q1+2),p1:(p1+2));
        res=f1.*m1;
        f(q1,p1)=sum(sum(res));
    end
end

subplot(2,2,1);
imshow(f);
title('Sobel filter');
subplot(2,2,2)
imshow(f);
title('Sobel fitler');

Gx=OUT;
Gy=f;
G = sqrt(Gx.^2+Gy.^2);

figure()
imshow(G)



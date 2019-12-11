clear; clc;
a = imread('original.jpg');
a2 = rgb2gray(a);
e1 = edge(a2,'prewitt');
e2 = edge(a2,'canny');
e3 = edge(a2,'sobel');
e4= edge(a2,'roberts');
imshow(a2);
subplot(2,2,1),imshow(e1)
subplot(2,2,2), imshow(e2)
subplot(2,2,3), imshow(e3)
subplot(2,2,4), imshow(e4)

%%
ic = a2;
px=[-1 0 1;-1 0 1;-1 0 1];
icx=filter2(px,ic);
figure,imshow(icx/255);
py=px';
icy=filter2(py,ic);
figure, imshow(icy/255);
pedge=sqrt(icx.^2+icy.^2);
figure,imshow(pedge/255);
fe=im2bw(pedge/255,0.3);
figure,imshow(fe);
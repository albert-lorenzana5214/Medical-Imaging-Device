clear; clc;
a = imread('original.jpg');
a2 = rgb2gray(a);
f = fspecial('laplacian');
af = filter2(f,a2);
imshow(af)
e = edge(a2, 'log');
imshow(e)
h = fspecial('disk');
e1 = edge(a2, 'zerocross',h);
imshow(e1)
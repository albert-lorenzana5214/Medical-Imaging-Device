%%
a = imread('original.jpg');
f = fspecial('laplacian');
af = filter2(f,a);
figure.imshow(af)
%%
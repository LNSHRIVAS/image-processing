a = imread('cameraman.tif');
x = im2gray(a);
b= imnoise(x,'salt & pepper',0.02);
y = conv2(single(b), ones(3)/9);
subplot(2,1,1)
imshow(b);
subplot(2,1,2)
imshow(uint8(y));
a = imread('cameraman.tif');
b= imnoise(a,'salt & pepper',0.02);
y=medfilt2(a,[5 5]);
subplot(2,1,1);
imshow(b);
subplot(2,1,2);
imshow((y));
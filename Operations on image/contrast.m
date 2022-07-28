clc; 
clear all;
close all;
a = imread('C:\Users\charusat\Desktop\download.jfif')
b = rgb2gray(a);
c =b*.5;
d = b*20;
imshow(a), title('original image')
figure,imshow(c), title('Increase in contrast');
figure, imshow(d), title('Decrese in contrast');
clc;
clear all;
close all;
a = imread('https://wallsdesk.com/wp-content/uploads/2017/01/White-Dandelion-Wallpapers.jpg');

X = [0 1 1 0; 1 0 0 1; 1 0 0 1; 0 1 1 0]
Y = [1 1 1 1  0 0; 0 1 1 1 1 0; 0 1 1 1 1 0; 0 1 1 1 0 0; 0 1 0 1 0 0; 1 1 0 0 1 1]

newimg = imdilate(Y, X)
imshow(newimg)
compy = Y'
imshow(compy)
erimg = imerode(Y, X)
newimg = imdilate(Y, compy)
imshow(newimg)
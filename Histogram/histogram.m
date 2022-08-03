clc
clear all
close all
a=imread('https://unsplash.com/photos/G9bDsVeHM7I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mnx8Z3JheXNjYWxlfGVufDB8fHx8MTY1OTQ0NzgzOQ&force=true');
b=histeq(a);
subplot(2,2,1),imshow(a),title('original image');
subplot(2,2,2),imshow(b),title('After histogram equalisation');
subplot(2,2,3),imhist(a),title('original histogram');
subplot(2,2,4),imhist(b),title('After histogram equalisation');
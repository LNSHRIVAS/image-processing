clc;
close all;

a = imread('https://unsplash.com/photos/G9bDsVeHM7I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mnx8Z3JheXNjYWxlfGVufDB8fHx8MTY1OTQ0NzgzOQ&force=true&w=640');
c = rgb2gray(a);
[m, n] = size(c);
t = input('Enter the threshold parameter:');
for i = 1:m
    for j=1:n
        if c(i,j)<t
            b(i,j)=0;
        else
            b(i,j) = 255;
        end
    end
end

subplot(2,1,1), imshow(c)
subplot(2,1,2), imshow(b)
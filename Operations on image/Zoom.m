clc;
clear all;
close all;
a=imread('https://unsplash.com/photos/M7l0CS4yBsY/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjU5NTE0NTA0&force=true&w=1920');
x = rgb2gray(a);
[m,n]=size(x);
p=input('Enter the size you want: ');
tic
for i=1:m 
for j=1:n 
for k=1:p 
b(i,(j-1)*p+k)=a(i,j);
end
end
end
c=b;
[m,n]=size(c);
for i=1:n % loop to extract every column
for j=1:m % loop to extract every row
for k=1:p % loop to control the number of replication
b((j-1)*p+k,i)=c(j,i); % replication of pixel in column wise
end
end
end
toc
imshow(a),title('original image')
figure,imshow(x),title('Zoomed image')
xlabel(sprintf('Zooming factor is %g',p))
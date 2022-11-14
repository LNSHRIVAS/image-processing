a = imread('https://wallsdesk.com/wp-content/uploads/2017/01/White-Dandelion-Wallpapers.jpg');
I = rgb2gray(a);
gamma=1.1;
I=double(I).^gamma;
y = I;
subplot(2,1,1)
imshow(a);
subplot(2,1,2)
imshow(uint8(y));
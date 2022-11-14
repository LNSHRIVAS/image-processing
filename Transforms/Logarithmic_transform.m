a = imread('https://wallsdesk.com/wp-content/uploads/2017/01/White-Dandelion-Wallpapers.jpg');
L=255;
c=L/log10(1+L);
y=c*log10(1+double(a));
subplot(2,1,1)
imshow(a);
subplot(2,1,2)
imshow(uint8(y));
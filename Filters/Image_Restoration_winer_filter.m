a = imread('cameraman.tif');
x=wiener2(a, [3 3]);
subplot(2,1,1);
imshow(a);
title('original image')
subplot(2,1,2);
imshow(x);
title('Restored wiener filtered image')
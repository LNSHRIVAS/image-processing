b = imread('rice.png');
a = imread('cameraman.tif');
c = imadd(a,b);
d = imsubtract(a,b);
x = uint8(a);
e = immultiply(x,a);
f = imdivide(b,2);

subplot(2,2,1);
imshow(c);
title('addition');
subplot(2,2,2);
imshow((d));
title('Subtraction');
subplot(2,2,3);
imshow(e);
title('Multiplication');
subplot(2,2,4);
imshow((f));
title('Division');
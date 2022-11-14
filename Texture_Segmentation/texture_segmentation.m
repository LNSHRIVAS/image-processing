warning off
figure;
I=imread('bag.png');
imshow(I);
title('Original Image');
E=rescale(entropyfilt(I));
binary_image=imbinarize(E,0.8);
area_opened=bwareaopen(binary_image,1500);
st=strel('square',10);
area_opened=imclose(area_opened,st);
hole_filling=imfill(area_opened,'holes');
figure;
subplot(1,2,1);
lower_part=I.*uint8(hole_filling);
imshow(lower_part);title('Lower Part')
subplot(1,2,2);
upper_part=I.*uint8(~hole_filling);
imshow(upper_part);title('Upper Part')
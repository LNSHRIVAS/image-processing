A=imread('cameraman.tif');
B = imresize(A, [250, 250]);
for i=1:250
    for j=1:250
        MSB(i,j)=bitand(B(i,j),1);
        LSB(i,j)=bitand(B(i,j),2);
        b2nd(i,j)=bitand(B(i,j),4);
        b3rd(i,j)=bitand(B(i,j),8);
        b4th(i,j)=bitand(B(i,j),16);
        b5th(i,j)=bitand(B(i,j),32);
        b6th(i,j)=bitand(B(i,j),64);
        b7th(i,j)=bitand(B(i,j),128);
    end
end
subplot(2,2,1),imshow(A),title('original image'),
subplot(2,2,2),imshow(b5th),title('5th bitplane image'),
subplot(2,2,3),imshow(b6th),title('6th bitplane image'),
subplot(2,2,4),imshow(b7th),title('7th bitplane image'),


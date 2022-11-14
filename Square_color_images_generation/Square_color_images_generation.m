%Number of images to be created
a = 32;
%for loop for generating and initializing random images
for x = 1:a
%creating random variables for generating random color values between
%0-255
    r1 = randi([0,255],1,1);
    r2 = randi([0,255],1,1);
    r3 = randi([0,255],1,1);
%creating r-g-b channel
    r = r1 * ones(200, 200, 'uint8');
    g = r2 * ones(200, 200, 'uint8');
    b = r3 * ones(200, 200, 'uint8');
%concatning rgb channel to create final image
    rgbImage = cat(3, r, g, b);
%creating a subplot of m x n matix for displaying random generated images
%imshow to display image in respected subplot
    subplot(8,4,x), imshow(rgbImage)
end
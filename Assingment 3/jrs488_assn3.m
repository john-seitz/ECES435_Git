%ECES435 Assignment 3 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - LSB Least Significant Bitplane Hiding

%Part 1 - 1st Task
P = imread('peppers.tif'); %Read in image as unit8
B = imread('baboon.tif'); %Read in image as unit8

P_Bitplane = get_bitplane(P,1); %extract 1st bitplane of image P, using function
B_Bitplane = get_bitplane(B,1); %extract 1st bitplane of image B, using function

figure (1);
imshow(P_Bitplane) %show bitplane

figure (2);
imshow(B_Bitplane) %show bitplane

%% Part 1 - 2nd Task
wmk1 = imread('LSBwmk1.tiff'); %Read in image as unit8
wmk2 = imread('LSBwmk2.tiff'); %Read in image as unit8
wmk3 = imread('LSBwmk3.tiff'); %Read in image as unit8

figure(3)

for I = 1:8
wmk1_Bitplane = get_bitplane(wmk1,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk1_Bitplane) %show bitplane
end

figure(4)
for I = 1:8
wmk2_Bitplane = get_bitplane(wmk2,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk2_Bitplane) %show bitplane
end

figure(5)

for I = 1:8
wmk3_Bitplane = get_bitplane(wmk3,I); %extract 1st bitplane of image P, using function
subplot(2,4,I)
imshow(wmk3_Bitplane) %show bitplane
end

%% Part 1 - 3rd Task
Pep = imread('peppers.tif'); %Read in image as unit8
Bab = imread('baboon.tif'); %Read in image as unit8
Barb = imread('Barbara.bmp'); %Read in image as unit8

figure(6)

subplot(2,4,1)
newimg = watermark2(Pep,Barb,1,8);
imshow(uint8(newimg))

subplot(2,4,2)
newimg = watermark2(newimg,Barb,2,7);
imshow(uint8(newimg))

subplot(2,4,3)
newimg = watermark2(newimg,Barb,3,6);
imshow(uint8(newimg))

subplot(2,4,4)
newimg = watermark2(newimg,Barb,4,5);
imshow(uint8(newimg))

subplot(2,4,5)
newimg = watermark2(newimg,Barb,5,4);
imshow(uint8(newimg))

subplot(2,4,6)
newimg = watermark2(newimg,Barb,6,3);
imshow(uint8(newimg))

subplot(2,4,7)
newimg = watermark2(newimg,Barb,7,2);
imshow(uint8(newimg))

subplot(2,4,8)
newimg = watermark2(newimg,Barb,8,1);
imshow(uint8(newimg))

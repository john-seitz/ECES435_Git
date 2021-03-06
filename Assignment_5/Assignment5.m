%ECES435 Assignment 5 - By Wanyu Li and John Seitz
close all; clear all; clc;
%Note: Code works best if you run each section independently!

%% Part 1 - 1st Task - Contrast Enhancement

Imgs = {'imageCE1.tif','imageCE2.tif','imageCE3.tif','imageCE4.tif'};
%Load in images


for i = 1:length(Imgs) % Loop for all 4 images
    newimg = imread(Imgs{i});
    figure(i);
    subplot(1,2,1);
    imshow(newimg);
    title(['Image',sprintf('%d',i)]);
    subplot(1,2,2);
    imhist(newimg); % use imhist to calculate the image's PVH
    title('Image Pixel Histogram');
end

%% Part 1 - 2nd Task - Gamma Correction

P12Imgs = {'unaltIm1.tif','unaltIm2.tif','unaltIm3.tif'};

for k = 1:length(P12Imgs)
    
    img = imread(P12Imgs{k});
    figure(k);
    subplot(2,3,1);
    imshow(img);
    title('Original Image')
    
    subplot(2,3,2);
    newimg = gammacorrect(0.7,img);
    newimg = uint8(newimg);
    imshow(newimg)
    title 'Gamma = 0.7 Image'
    
    subplot(2,3,3);
    newimg = gammacorrect(1.3,img);
    newimg = uint8(newimg);
    imshow(newimg)
    title 'Gamma = 1.3 Image'
    
    img = imread(P12Imgs{k});
    figure(k);
    subplot(2,3,4);
    imhist(img);
    title('Original Image PVH')
    
    subplot(2,3,5);
    newimg = gammacorrect(0.7,img);
    newimg = uint8(newimg);
    imhist(newimg)
    title 'Gamma = 0.7 PVH'
    
    subplot(2,3,6);
    newimg = gammacorrect(1.3,img);
    newimg = uint8(newimg);
    imhist(newimg)
    title 'Gamma = 1.3 PVH'
    
end

%% Part 1 - 3rd Task - Contractive or Expansive Mappings

P3Img = imread('imageCE5.tif');

figure
subplot(1,2,1);
imshow(P3Img);
title('Image');

subplot(1,2,2);
imhist(P3Img);
title('Images PVH');

%% Part 2 - 1st Task - Detecting Image Resampling and Resizing

P2Imgs = {'resamp1.tif','resamp2.tif','resamp3.tif','resamp4.tif'};
%Load in images

l = 1; % Lamda value
t = 2; % Tau value
s = 1; % Sigma value
%Set values used in function below

for i = 1: length(P2Imgs)
    p_map = kirchnerPmap(P2Imgs{i},l,t,s); %Apply Kirchner P map function to obtain p map and frequency p map
end

%Following 
type kirchnerPmap.m

% ECES435 Assignment 5 - By Wanyu Li and John Seitz
close all; clear all; clc;
%% Part 1 - 1st Task - Contrast Enhancement

P2Imgs = {'unaltIm1.tif','unaltIm2.tif','unaltIm3.tif'};

for k = 1:length(P2Imgs)
    
    img = imread(P2Imgs{k});
    figure(k);
    subplot(1,3,1);
    imshow(img);
    title('Original Image PVH')
    
    subplot(1,3,2);
    newimg = gammacorrect(0.7,P2Imgs{k});
    newimg = uint8(newimg);
    imshow(newimg)
    title 'Gamma = 0.7 PVH'
    
    subplot(1,3,3);
    newimg = gammacorrect(1.3,P2Imgs{k});
    imshow(newimg)
    title 'Gamma = 1.3 PVH'
    
end
%% 
P2Imgs = {'unaltIm1.tif','unaltIm2.tif','unaltIm3.tif'};
testimg = imread(P2Imgs{3});

figure (1);
imshow(testimg)
title 'Original'

figure (2);
gamma = 0.7;
img2 = gammacorrect(gamma,testimg);
img3 = uint8(img2);
imshow(img2)
title 'Gamma = 0.7'
%%

pout = imread('unaltIm1.tif');

figure(1);
imshow(pout)
title 'Original'

figure(2);
gamma = 0.7; %user specified gamma value
Newimg = gammacorrect(gamma,pout); %gamma correction function
newpout = uint8(Newimg); %change corrected image to unit8 type
imshow(newpout)
title 'Gamma = 1'
function [newimg] = watermark(img1,img2,N) %Define function
%Watermark function will take two images, img1 behind the host, and img2
%being the watermark. convert them to double, then replace the bitplane 'N'
%of img1 with img2
img1 = double(img1); %Host image to double
img2 = double(img2); %watermark image to double

bp = get_bitplane(img2,8); %use created get_bitplane function to get bitplane from watermark image
newimg = bitset(img1,N,bp); %create the new img1 by replacing the 'N' bitplane with the bitplane from watermark image (img2)
end


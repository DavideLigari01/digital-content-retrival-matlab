% ES 12
% Download  a  gray-level  image  (or  convert  a  color  image  to  a  grey-level    one)  compute  the
% discrete cosine transform (block 8x8) and plot it at a proper scale. Threshold the values of
% the  coefficients  of  the  cosine  transform  (the  threshold  is  parametric)  and  perform  the
% inverse  discrete  cosine transform.  Try  several  values  of  threshold  (i.e.,  the  mean  value  of
% the coefficients, the maximum value/2, ...) to investigate different strategy of thresholding
% masking.

clear;

[file, path] = uigetfile({'*.tiff;*.jpg;*.png;*.jpeg'}, "select an image");
original = imread(strcat(path, file));
image = original(1:8, 1:8, :);
image = checkGrey(image);
image = im2double(image);
imTrasformed = dct(image);
inverse = idct2(imTrasformed);
K = rescale(inverse);

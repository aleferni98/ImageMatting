% Bayesian Matting - v. 01

% Reading original image
original_img = imread("Pumpkin_GT.png");

% Reading Trimap for the image
trimap_img = imread("Pumpkin_Trimap.png");

% Function to get alpha
 alpha_value = getAlpha(original_img, trimap_img);
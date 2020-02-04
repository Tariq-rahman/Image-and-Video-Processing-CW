function binarized_foreground = median_background_subtraction(path,img_name,file_type)
% the parameter path must end with slash, e.g: 'Board/input/
% the parameter img_name must not include path e.g 'name.png'
% the parameter file_type must have the dot e.g '.png'
% e.g  median_background_subtraction('Board/input/','in000050.png', '.png')
% function assumes image sequences are in their own folder in same
% directory as code
% Get the image
img = imread(strcat(path,img_name));
% Make it grayscale
img = rgb2gray(img);
% convert type to double
img = double(img);
% Generate the background model based on the whole image sequence
b_model = median_background_model(path,file_type);

% Find the absolute difference between given image and background model
foreground = imabsdiff(img,b_model);
% Remove noise with [5,5] median filter
foreground = medfilt2(foreground,[5,5]);
% Threshold the image to make it black and white,
binarized_foreground = threshold(foreground);
% Show the result
figure, image(binarized_foreground), axis off, colormap gray(256)
end


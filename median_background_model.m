function b_model = median_background_model(path,file_type)
% Get all files with the specified file type, should only be .png or .jpeg
files = dir(strcat(path,'*',file_type));
n = length(files);

% pre-allocate cell array to improve efficiency
image_set = cell(50,50);
image_set{50,50} = [];

% Iterate through the collection of images
for i=1:n
    % Read the image and convert it into a grayscale double type
    img= double(rgb2gray(imread(strcat(path,files(i).name))));
    % Add it to the image_set cell array
    image_set{i} = img;
end
% get the number of dimensions of an image 
dimension = ndims(image_set{1});
% concatenate all the images in the image set
b_model = cat(dimension+1,image_set{:});
% Find the median for each pixel accross all images
% So for the pixel location [2,2] it will get the median value for all imgs
b_model = median(b_model,dimension+1);
end


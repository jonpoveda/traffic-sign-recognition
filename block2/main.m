% Block 2
% Goal: Understand and apply morphological operators in Image Processing
% See https://es.mathworks.com/help/images/morphological-filtering.html

% Add code to path
addpath(genpath('.'))
% Add some external code to path
addpath('../:../evaluation/')
% Set database path
global dataset_path
root = fileparts(fileparts(pwd));
dataset_path = fullfile(root, 'datasets', 'trafficsigns');

%% Task 1: Implement morphological operators Erosion/Dilation. Compose new 
%   operators from Dilation/Erosion: Opening, Closing, TopHat and TopHat 
%   dual
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% No code here %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Task 2: Measure the computational efficiency of your programed operators
%   Erosion/Dilation


%% Task 3: Use operators to improve results in sign detection
image_number = 1
files =  ListFiles(fullfile(dataset_path, 'test'));
file = files(image_number).name;
name = split(file, '.jpg'); name=name{1};
path = fullfile(dataset_path, 'test', 'mask', strcat('mask.', name, '.png'));
disp(path);
image = imread(path);
% image = image==0;
subplot(1,2,1), imshow(image);
se = strel('disk', 3);
modified = imopen(image, se);
% modified = imfill(image, 'holes');
subplot(1,2,2), imshow(modified, []);


%% Task 4: Apply histogram back-projection to perform color segmentation

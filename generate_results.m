% Note, please have each image folder in the same directory as the code
clear;
tic;
foreground = median_background_subtraction('Board/input/','in000050.png', '.png');
toc;
Board_time = toc;
Board_psnr = calculatePSNR(foreground,imread('Board/groundtruth/gt000050.png'));

tic;
foreground = median_background_subtraction('CAVIAR2/input/','in000200.jpg', '.jpg');
toc;
CAVIAR2_time = toc;
CAVIAR2_psnr = calculatePSNR(foreground,imread('CAVIAR2/groundtruth/gt000200.png'));

tic;
foreground = median_background_subtraction('Foliage/input/','in000050.jpg', '.jpg');
toc;
Foliage_time = toc;
Foliage_psnr = calculatePSNR(foreground,imread('Foliage/groundtruth/gt000050.png'));

tic;
foreground = median_background_subtraction('HallAndMonitor/input/','in000050.png', '.png');
toc;
HallAndMonitor_time = toc;
HallAndMonitor_psnr = calculatePSNR(foreground,imread('HallAndMonitor/groundtruth/gt000050.png'));

tic;
foreground = median_background_subtraction('HighwayI/input/','in000100.png', '.png');
toc;
HighwayI_time = toc;
HighwayI_psnr = calculatePSNR(foreground,imread('HighwayI/groundtruth/gt000100.png'));

tic;
foreground = median_background_subtraction('HighwayII/input/','in000050.png', '.png');
toc;
HighwayII_time = toc;
HighwayII_psnr = calculatePSNR(foreground,imread('HighwayII/groundtruth/gt000050.png'));

tic;
foreground = median_background_subtraction('IBMtest2/input/','in000020.png', '.png');
toc;
IBMtest2_time = toc;
IBMtest2_psnr = calculatePSNR(foreground,imread('IBMtest2/groundtruth/gt000020.png'));

tic;
foreground = median_background_subtraction('Snellen/input/','in000150.png', '.png');
toc;
Snellen_time = toc;
Snellen_psnr = calculatePSNR(foreground,imread('Snellen/groundtruth/gt000150.png'));
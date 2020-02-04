function ret = calculatePSNR(inputArg1,inputArg2)     
    sdiff = (double(inputArg1)-double(inputArg2)).^2;
    sdiff_sum = sum(sdiff, 'all');
    [width, height] = size(inputArg1);
    pixels = width * height;
    mse = sdiff_sum/pixels;
    ret = 10. * log10(255*255/mse);
end

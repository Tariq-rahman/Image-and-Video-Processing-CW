function img = threshold(img)
img(img < 40 ) = 0;
img(img > 40 ) =255;
end


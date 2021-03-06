
testFile = 'cameraman.tif';
imgOrig = imread(testFile);
[height, width] = size(imgOrig);
imgOut = zeros(height,width);
hBlank = 20;
% make sure we have enough vertical blanking to filter the histogram
vBlank = ceil(2^14/(width+hBlank));

for frame = 1:2
    disp(['working on frame: ', num2str(frame)]);
    for y_in = 0:height+vBlank-1
        %disp(['frame: ', num2str(frame), ' of 2, row: ', num2str(y_in)]);
        for x_in = 0:width+hBlank-1
            if x_in < width && y_in < height
                pixel_in = double(imgOrig(y_in+1, x_in+1));
            else
                pixel_in = 0;
            end
            
            [x_out, y_out, pixel_out] = ...
                mlhdlc_heq(x_in, y_in, pixel_in, width, height);
                       
            if x_out < width && y_out < height
                imgOut(y_out+1,x_out+1) = pixel_out;
            end
        end
    end
    
    % normalize image to 255
    imgOut = round(255*imgOut/max(max(imgOut)));
    
    figure(1)
    subplot(2,2,1); imshow(imgOrig, [0,255]);
    title('Orjinal Resim');
    subplot(2,2,2); imshow(imgOut, [0,255]);
    title('Eşitlenmiş Resim');
    subplot(2,2,3); hist(double(imgOrig(:)),2^14-1);
    axis([0, 255, 0, 1500])
    title('Orjinal Resimin Histogramı');
    subplot(2,2,4); hist(double(imgOut(:)),2^14-1);
    axis([0, 255, 0, 1500])
    title('Eşitlenmiş Resimin Histogramı');
end
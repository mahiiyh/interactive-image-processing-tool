function main
    % Create the GUI figure
    fig = figure('Name', 'Image Processing GUI', 'NumberTitle', 'off', 'Position', [100, 100, 800, 600]);

    % Create UI components
    uicontrol('Style', 'pushbutton', 'String', 'Upload Image 1', 'Position', [50, 550, 100, 30], 'Callback', @uploadImage1);
    uicontrol('Style', 'pushbutton', 'String', 'Upload Image 2', 'Position', [200, 550, 100, 30], 'Callback', @uploadImage2);
    uicontrol('Style', 'pushbutton', 'String', 'Upload Image 3', 'Position', [350, 550, 100, 30], 'Callback', @uploadImage3);
    uicontrol('Style', 'pushbutton', 'String', 'Calculate Contrast', 'Position', [500, 550, 100, 30], 'Callback', @calculateContrast);
    uicontrol('Style', 'pushbutton', 'String', 'Convert to Grayscale', 'Position', [650, 550, 100, 30], 'Callback', @convertToGrayscale);
    uicontrol('Style', 'pushbutton', 'String', 'Show Histogram', 'Position', [50, 500, 100, 30], 'Callback', @showHistogram);
    uicontrol('Style', 'pushbutton', 'String', 'Binarize and Filter', 'Position', [200, 500, 100, 30], 'Callback', @binarizeAndFilter);

    % Axes for displaying images
    ax1 = axes('Units', 'pixels', 'Position', [50, 300, 200, 200]);
    ax2 = axes('Units', 'pixels', 'Position', [300, 300, 200, 200]);
    ax3 = axes('Units', 'pixels', 'Position', [550, 300, 200, 200]);

    % Variables to store images
    img1 = [];
    img2 = [];
    img3 = [];

    function uploadImage1(~, ~)
        [file, path] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files'});
        if isequal(file, 0)
            return;
        end
        img1 = imread(fullfile(path, file));
        imshow(img1, 'Parent', ax1);
    end

    function uploadImage2(~, ~)
        [file, path] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files'});
        if isequal(file, 0)
            return;
        end
        img2 = imread(fullfile(path, file));
        imshow(img2, 'Parent', ax2);
    end

    function uploadImage3(~, ~)
        [file, path] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files'});
        if isequal(file, 0)
            return;
        end
        img3 = imread(fullfile(path, file));
        imshow(img3, 'Parent', ax3);
    end

    function calculateContrast(~, ~)
        if isempty(img1) || isempty(img2) || isempty(img3)
            errordlg('Please upload all images first.');
            return;
        end
        contrast1 = rmsContrast(img1);
        contrast2 = rmsContrast(img2);
        contrast3 = rmsContrast(img3);
        msgbox(sprintf('Contrast:\nImage 1: %.2f\nImage 2: %.2f\nImage 3: %.2f', contrast1, contrast2, contrast3));
    end

    function contrast = rmsContrast(img)
        grayImg = rgb2grayCustom(img);
        meanIntensity = mean(grayImg(:));
        contrast = sqrt(mean((double(grayImg(:)) - meanIntensity).^2));
    end

    function convertToGrayscale(~, ~)
        if isempty(img1) || isempty(img2) || isempty(img3)
            errordlg('Please upload all images first.');
            return;
        end
        grayImg1 = rgb2grayCustom(img1);
        grayImg2 = rgb2grayCustom(img2);
        grayImg3 = rgb2grayCustom(img3);
        figure, imshow(grayImg1), title('Grayscale Image 1');
        figure, imshow(grayImg2), title('Grayscale Image 2');
        figure, imshow(grayImg3), title('Grayscale Image 3');
    end

    function grayImg = rgb2grayCustom(img)
        % Optimized weights for RGB channels
        weights = [0.2989, 0.5870, 0.1140];
        grayImg = uint8(weights(1) * double(img(:,:,1)) + weights(2) * double(img(:,:,2)) + weights(3) * double(img(:,:,3)));
    end

    function showHistogram(~, ~)
        if isempty(img1) || isempty(img2) || isempty(img3)
            errordlg('Please upload all images first.');
            return;
        end
        grayImg1 = rgb2grayCustom(img1);
        grayImg2 = rgb2grayCustom(img2);
        grayImg3 = rgb2grayCustom(img3);
        figure, imhist(grayImg1), title('Histogram of Image 1');
        figure, imhist(grayImg2), title('Histogram of Image 2');
        figure, imhist(grayImg3), title('Histogram of Image 3');
    end

    function binarizeAndFilter(~, ~)
        if isempty(img1) || isempty(img2) || isempty(img3)
            errordlg('Please upload all images first.');
            return;
        end
        grayImg1 = rgb2grayCustom(img1);
        grayImg2 = rgb2grayCustom(img2);
        grayImg3 = rgb2grayCustom(img3);
        binImg1 = imbinarize(grayImg1);
        binImg2 = imbinarize(grayImg2);
        binImg3 = imbinarize(grayImg3);
        se = strel('disk', 5);
        filteredImg1 = imopen(binImg1, se);
        filteredImg2 = imopen(binImg2, se);
        filteredImg3 = imopen(binImg3, se);
        figure, imshow(filteredImg1), title('Filtered Image 1');
        figure, imshow(filteredImg2), title('Filtered Image 2');
        figure, imshow(filteredImg3), title('Filtered Image 3');
    end
end
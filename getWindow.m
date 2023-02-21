function r = getWindow(img, x, y, N)
    
    % Getting the size of the image
    [height, width, color_channels] = size(img);
    half_N = floor(N/2);
    
    % Initializing r
    r = zeros(N, N, color_channels);
    
    % Setting x coordinate max and min
    xmin = max(0, x - half_N); 
    xmax = min(width, x + half_N);

    % Setting y coordinate max and min 
    ymin = max(0, y - half_N); 
    ymax = min(height, y + half_N);

    pxmin = half_N + 1 - (x - xmin); 
    pxmax = pxmin + (xmax - xmin);
    
    pymin = half_N + 1 - (y - ymin); 
    pymax = pymin + (ymax - ymin);

    r(pymin:pymax, pxmin:pxmax, :) = img(ymin:ymax, xmin:xmax, :);
end
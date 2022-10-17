I1 = rgb2gray(imread('campus_01.jpg'));
I2 = rgb2gray(imread('campus_02.jpg'));

figure;imshow('campus_01.jpg');P1 = ginput(10);
figure;imshow('campus_02.jpg');P2 = ginput(10);

[features1, valid_points1] = extractFeatures(I1, P1);
[features2, valid_points2] = extractFeatures(I2, P2);

indexPairs = matchFeatures(features1, features2);

matched_points1 = valid_points1(indexPairs(:, 1), :);
matched_points2 = valid_points2(indexPairs(:, 2), :);

figure; showMatchedFeatures(I1, I2, matched_points1, matched_points2);

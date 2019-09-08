% Load track 1

clear all
close all
clc

load track1.txt;
time1 = track1(:,1);
lat1 = track1(:,2)/1e6; % divide by 1e6 to convert to degrees
lon1 = track1(:,3)/1e6;
ssh1 = track1(:,4);

load track2.txt;
lat2 = track2(:,2)/1e6;
lon2 = track2(:,3)/1e6;
ssh2 = track2(:,4);
ssh1 = ssh1(1:length(ssh2)); % cut the length of the ssh1 vector to that of
% the ssh2 vector length

% Compute the standard deviations
std(ssh1)
std(ssh2)

% compute the means
mean(ssh1)
mean(ssh2)

P=[[(std(ssh1)^2),(mean(ssh1)+mean(ssh2))/2]
    [(mean(ssh1)+mean(ssh2))/2], (std(ssh2)^2)
    ]

% need to incorporate E in the matrix computation to get a single number
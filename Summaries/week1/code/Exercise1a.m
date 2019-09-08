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


% find the max and minimum values for the plot domain:
x_min = 0;
x_max = min(length(ssh1),length(ssh2))
y_min = min(min(ssh1),min(ssh2))
y_max = max(max(ssh1),max(ssh2))


% Create scatterplot by using the vector element index as unifying property
% then plot ssh1 as x-coordinate, and ssh2 as y-coordinate of a point.
figure(1);
% hold on
% plot(ssh1,ssh2,'ko','MarkerSize',8,'MarkerFaceColor',[0 0 0]) % black balls
% plot(ssh1,ssh2,'ko','MarkerSize',8,'MarkerFaceColor',[0 0 1]) % blue balls (RGB)
% plot(ssh1,ssh2,'ko','MarkerSize',8,'MarkerFaceColor',[0 1 0]) % green balls (RGB)
% plot(ssh1,ssh2,'ko','MarkerSize',8,'MarkerFaceColor',[1 0 0]) % % red balls (RGB)
% plot(ssh1,ssh2,'ko','MarkerSize',8,'MarkerFaceColor',[1 1 1]) % White balls (RGB)
plot(ssh2,ssh1,'ks','MarkerFaceColor','b')
set(gca,'FontSize',20) % create carthesian axis

% Note: if you do not set the axis domains, it will auto scatter,
% otherwise it will put it on a vertical line at value: x=53
axis([x_min x_max y_min y_max]); % set axis domains

xlabel('x','FontSize',20)
ylabel('y','FontSize',20)
print -depsc verticalLine% print figure to eps file


% Retry scatterplot by evaluating the answer model for the scatter plot:
fprintf('time1 lenght = %d but ss1 lenght = %d .\n',length(time1),length(ssh1));
time1 = time1(1:length(ssh2)); % cut the length of the ssh1 vector to that of
% the ssh2 vector length

figure(3) % 20 is a figure handle and it is the name of the figure
plot(ssh2,ssh1,'ks','MarkerFaceColor','b')
set(gca,'FontSize',20) % set carthesian axis system
xlabel('track1','FontSize',20)
ylabel('track2','FontSize',20)
print -depsc scatterPlot % print figure to eps file


% Create a third extra plot that uses vector element index as x-axis, 
% and ssh1 and ssh2 as two separate dataseries in the same plot
figure(2);
hold on
plot(ssh1,'ro','MarkerSize',8,'MarkerFaceColor',[1 0 0])
plot(ssh2,'bo','MarkerSize',8,'MarkerFaceColor',[0 0 1])
legend('Sea Surface Height of track 1', 'Sea Surface Height of track 2')
set(gca,'FontSize',20)
xlabel('undefined unit of distance','FontSize',20)
print -depsc twoTimeSeries % print figure to eps file

clc
clear
%% Import data
% data = xlsread('res/drug-ap.xlsx');
% data = xlsread('res/drug-roc.xlsx');
% data = xlsread('res/gpcr-ap.xlsx');
% data = xlsread('res/gpcr-roc.xlsx');
% data = xlsread('res/ionchannel-ap.xlsx');
% data = xlsread('res/ionchannel-roc.xlsx');
% data = xlsread('res/malaria-ap.xlsx');
 data = xlsread('res/malaria-roc.xlsx');
% data = xlsread('data2.xlsx');
%% Parameter setting
fontSize = 28;
lineWidthBox = 1.5;
lineWidth = 2.5;
% symbol = ['s','d','^','v','>','<','x','x','s','d'];
symbol = ['d','d','d','d','d','d','d','d','d'];
markerSize = 12;
pictureSize = [200,200,950,650];
fileName = "f1.esp";
pictureResolution = '-r600';
color = [[237 81 77]/255;[248 184 182]/255;[117 198 66]/255;[88 142 49]/255;[244 232 74]/255;[0.0 0.4470 0.7411];[95 214 251]/255;[179 215 219]/255];
coordinateRange = [[10 80];[45 105]];
xLabel = 'Training set ratio';
yLabel = 'AUC-ROC'
%% plot
% figure
hold on
box on
grid on
set(gca,'LineWidth',lineWidthBox)
for i=1:8
    plot(data(:,1),data(:,i+1),'--','Color',color(i,:),'LineWidth',lineWidth,'Marker',symbol(1,i),'MarkerSize',markerSize,'MarkerFaceColor',color(i,:));
end
legend('srnmf-cn', 'srnmf-jc', 'srnmf-cpa', 'bispm', 'sesp', 'gae', 'lgae', 's-danmf', 'Location', 'northwest');
% legend('boxoff')
set(gca,'XLim',coordinateRange(1,:),'YLim',coordinateRange(2,:));
set(gca,'FontName','Times New Roman','FontSize',fontSize)
set(gcf,'Position',pictureSize)
xlabel(xLabel,'FontName','Times New Roman','FontSize',fontSize);
ylabel(yLabel,'FontName','Times New Roman','FontSize',fontSize);
xticks(15:20:75)
yticks(50:10:100)

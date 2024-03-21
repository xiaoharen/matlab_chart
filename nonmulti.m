clc
clear
%% Import data
% data = xlsread('trans_data/data.xlsx');
years = [2016, 2017, 2018, 2019, 2020, 2021, 2022];
years2 = [2015.5, 2016, 2016.5, 2017, 2017.5, 2018, 2018.5, 2019, 2019.5, 2020, 2020.5, 2021, 2021.5, 2022];
years3 = [2016, 2017, 2018, 2019, 2020, 2021, 2022];
edges = [1.5918, 14.0941, 32.6789, 49.066, 61.8044, 93.3749, 60.7477];
edges2 = [0.0281, 1.5637, 4.5997, 9.4944, 13.6327, 19.0455, 22.6418, 26.4242, 31.3136, 30.4901, 44.0039, 49.3712, 25.7430, 35.0048];
edges3 = [74.8910, 82.0418, 94.3926, 90.9394, 77.1157, 73.3837, 45.0061];
% edges = [15918, 140941, 326789, 490660, 618044, 933749, 607477]
%% Parameter setting
fontSize = 30;
lineWidthBox = 2.5;
lineWidth = 2.5;
symbol = ['s','d','^','v','>','<','x','x','s','d'];
% symbol = ['d','d','d','d','d','d','d','d','d'];
markerSize = 12;
pictureSize = [200,200,950,650];
fileName = "f1.esp";
pictureResolution = '-r600';
color = [[237 81 77]/255;[248 184 182]/255;[117 198 66]/255;[88 142 49]/255;[244 232 74]/255;[0.0 0.4470 0.7411];[95 214 251]/255;[179 215 219]/255];
coordinateRange = [[2016 2022];[1 100]];
xLabel = 'Years';
yLabel = 'Edges'
%% plot
% figure
hold on
box on
grid on
set(gca,'LineWidth',lineWidthBox)
for i=1:1
    plot(years,edges,'--','Color',color(i+3,:),'LineWidth',lineWidth,'Marker',symbol(1,i),'MarkerSize',markerSize,'MarkerFaceColor',color(i,:));
    plot(years2,edges2,'--','Color',color(i+4,:),'LineWidth',lineWidth,'Marker',symbol(1,i+1),'MarkerSize',markerSize,'MarkerFaceColor',color(i+1,:));
    plot(years3,edges3,'--','Color',color(i+2,:),'LineWidth',lineWidth,'Marker',symbol(1,i+2),'MarkerSize',markerSize,'MarkerFaceColor',color(i+5,:));
  end
legend('NKPD', 'NKPD(half)', 'CND', 'bispm', 'sesp', 'gae', 'lgae', 's-danmf', 'Location', 'northwest');
% legend('boxoff')
set(gca,'XLim',coordinateRange(1,:),'YLim',coordinateRange(2,:));
set(gca,'FontName','Times New Roman','FontSize',fontSize)
set(gcf,'Position',pictureSize)
xlabel(xLabel,'FontName','Times New Roman','FontSize',fontSize);
ylabel(yLabel,'FontName','Times New Roman','FontSize',fontSize);
% xticks(15:20:75)
% yticks(50:10:100)

clc
clear
%% Parameter setting
    fontSize = 30;
    lineWidthBox = 2.5;
    lineWidth = 2.5;
    symbol = ['o','.','s','x','^','v','<','d','>'];
    markerSize = 8;
    pictureSize = [200,200,950,650];
    fileName = "f1.esp";
    pictureResolution = '-r600';
    color = [[237 81 77]/255;[248 184 182]/255;[179 215 219]/255;[88 142 49]/255;[244 232 74]/255;[0.0 0.4470 0.7411];[95 214 251]/255;[117 198 66]/255];
    coordinateRange = [[10 80];[45 105]];
    xLabel = 'Training set ratio';
    xLabels = ["Drug","GPC","IC","Mal"];
    titleLabels = ["(a) Drug","(b) GPC","(c) IC","(d) Mal"];
    yLabel = 'AUC-ROC';
for k = 1:4
    subplot(2,2,k);
    %% Import data
    dataList = ["res/drug-roc.xlsx","res/gpcr-roc.xlsx","res/ionchannel-roc.xlsx","res/malaria-roc.xlsx";];
%     dataList = ["res/drug-ap.xlsx","res/gpcr-ap.xlsx","res/ionchannel-ap.xlsx","res/malaria-ap.xlsx";];
    data = xlsread(dataList(1,k));
    %% plot
    hold on
    box on
    grid on
    set(gca,'LineWidth',lineWidthBox)
    for i=1:8
        plot(data(:,1),data(:,i+1),'--','Color',color(i,:),'LineWidth',lineWidth,'Marker',symbol(1,i),'MarkerSize',markerSize,'MarkerFaceColor',color(i,:));
    end
    
    set(gca,'XLim',coordinateRange(1,:),'YLim',coordinateRange(2,:));
    set(gca,'FontName','Times New Roman','FontSize',fontSize)
    xlabel('Trainig set ratio','FontName','Times New Roman','FontSize',fontSize);
    ylabel(yLabel,'FontName','Times New Roman','FontSize',fontSize);
    title(titleLabels(1,k))
    xticks(15:20:75)
    yticks(50:10:100)
end
set(gcf,'Position',pictureSize);
legend('boxoff');
legend('srnmf-cn', 'srnmf-jc', 'srnmf-cpa', 'bispm', 'sesp', 'gae', 'lgae', 's-danmf');

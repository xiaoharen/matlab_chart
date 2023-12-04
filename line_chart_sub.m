clc
clear
%% Parameter setting
    fontSize = 20;
    lineWidthBox = 1.5;
    lineWidth = 1.5;
    % symbol = ['s','d','^','v','>','<','x','x','s','d'];
    symbol = ['o','.','s','x','^','v','<','d','>'];
    markerSize = 8;
    pictureSize = [200,200,950,650];
    subPictureSize1 = [0.08,0.55,0.3,0.3];
    subPictureSize2 = [0.45,0.55,0.3,0.3];
    subPictureSize3 = [0.08,0.18,0.3,0.3];
    subPictureSize4 = [0.45,0.18,0.3,0.3];
    % subPictureSize = [0.08 0.55 0.3 0.3;0.15 0.55 0.3 0.3;0.08 0.18 0.3 0.3;0.15 0.18 0.3 0.3];
    subPictureSize = [subPictureSize1;subPictureSize2;subPictureSize3;subPictureSize4];
    fileName = "f1.esp";
    pictureResolution = '-r600';
    color = [[237 81 77]/255;[248 184 182]/255;[179 215 219]/255;[88 142 49]/255;[244 232 74]/255;[0.0 0.4470 0.7411];[95 214 251]/255;[117 198 66]/255];
    coordinateRange = [[10 80];[45 105]];
    xLabel = 'Training set ratio';
    xLabels = ["Training set ratio(drug)","Training set ratio(gpcr)","Training set ratio(ionchannel)","Training set ratio(malaria)"];
    yLabel = 'AUC-ROC'
for k = 1:4
    subplot(4,1,k);
    % set(gca,'position',subPictureSize(k,:))
    %% Import data
    dataList = ["res/drug-ap.xlsx","res/gpcr-ap.xlsx","res/ionchannel-ap.xlsx","res/malaria-ap.xlsx";];
    data = xlsread(dataList(1,k));
    %% plot
    % figure
    hold on
    box on
    grid on
    set(gca,'LineWidth',lineWidthBox)
    for i=1:8
        plot(data(:,1),data(:,i+1),'--','Color',color(i,:),'LineWidth',lineWidth,'Marker',symbol(1,i),'MarkerSize',markerSize,'MarkerFaceColor',color(i,:));
    end
    
    set(gca,'XLim',coordinateRange(1,:),'YLim',coordinateRange(2,:));
    set(gca,'FontName','Times New Roman','FontSize',fontSize)
    set(gcf,'Position',pictureSize)
    xlabel(xLabels(1,k),'FontName','Times New Roman','FontSize',fontSize);
    ylabel(yLabel,'FontName','Times New Roman','FontSize',fontSize);
    xticks(15:20:75)
    yticks(50:10:100)
end
legend('boxoff');
legend('srnmf-cn', 'srnmf-jc', 'srnmf-cpa', 'bispm', 'sesp', 'gae', 'lgae', 's-danmf', 'Location', 'northwest');

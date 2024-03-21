clear;
clc;
figure('position',[150,100,900,550])
ROC=[83.5,84.3,85.6,90.27;
    75.8,79.7,86.6,89.1;
    67.3,81.3,89.9,91.65;
    61.6,69.8,78.1,88.11];
AP=[83.5,84.37,85.6,90.27;
    75.8,80.12,86.6,89.1;
    67.3,81.52,89.9,91.65;
    61.6,70.1,78.1,88.11];
X=1:4;
% ------------------------------------------------
subplot(2,1,1);
set(gca,'XTickLabel',[]);
hold on
box on
grid on

h=bar(X,ROC,1);      
set(h(1),'FaceColor',[115, 162, 198]/255)  
set(h(2),'FaceColor',[165, 213, 216]/255)    
set(h(3),'FaceColor',[255, 188, 175]/255)
set(h(4),'FaceColor',[244, 119, 127]/255) 

ylim([60,100]);
ylabel('AUC-ROC');
title('(a)'); 
set(gca,'FontName','Times New Roman','FontSize',30)
% ------------------------------------------------
subplot(2,1,2);
set(gca,'XTickLabel',[]);
hold on
box on
grid on

h=bar(X,AP,1);      
set(h(1),'FaceColor',[115, 162, 198]/255)  
set(h(2),'FaceColor',[165, 213, 216]/255)    
set(h(3),'FaceColor',[255, 188, 175]/255)
set(h(4),'FaceColor',[244, 119, 127]/255) 

ylim([60,100]);
ylabel('AUC-AP');
title('(b)'); 
legend('NMF','DNMF','DANMF','SE-DANMF');
set(gca,'FontName','Times New Roman','FontSize',30)
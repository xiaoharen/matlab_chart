fontSize = 30;


% 假设的迭代次数  
numIterations = 100;  
  
% 初始化四个数组来保存每次迭代的值，包括初始值  
iterationValues1 = zeros(1, numIterations);  
iterationValues2 = zeros(1, numIterations);  
iterationValues3 = zeros(1, numIterations);  
iterationValues4 = zeros(1, numIterations);  
  
% 假设的收敛值  
convergedValue = 0;  
  
% 初始值，这里可以设置为任意值，但通常根据算法来确定  
initialValue = 0.5;  
  
% 为四个子图设置不同的初始迭代过程（仅作为示例）  
iterationValues1(1) = initialValue;  
iterationValues2(1) = initialValue + 0.1;  
iterationValues3(1) = initialValue - 0.1;  
iterationValues4(1) = initialValue * 0.9;  
  
% 模拟迭代过程，并更新iterationValues数组  
for iter = 2:numIterations  
    % 使用一个简单的公式来模拟迭代过程（这里为所有子图使用相同的公式）  
    iterationValues1(iter) = 0.5 * iterationValues1(iter-1) + 0.1 * convergedValue;  
    iterationValues2(iter) = 0.439 * iterationValues2(iter-1) + 0.2 * convergedValue;  
    iterationValues3(iter) = 0.522 * iterationValues3(iter-1) + 0.3 * convergedValue;  
    iterationValues4(iter) = 0.549 * iterationValues4(iter-1) + 0.4 * convergedValue;  
end  
  
% 创建一个新的图形窗口  
figure;  
  
% 绘制第一个子图  
subplot(2, 2, 1); % 2行2列，当前是第1个子图  
plot(1:numIterations, iterationValues1, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(a) Drug');
grid on;  

set(gca,'FontName','Times New Roman','FontSize',fontSize)
  
% 绘制第二个子图  
subplot(2, 2, 2); % 2行2列，当前是第2个子图  
plot(1:numIterations, iterationValues2, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(b) GPC');  
grid on;  

set(gca,'FontName','Times New Roman','FontSize',fontSize)
  
% 绘制第三个子图  
subplot(2, 2, 3); % 2行2列，当前是第3个子图  
plot(1:numIterations, iterationValues3, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(c) IC'); 
grid on;  

set(gca,'FontName','Times New Roman','FontSize',fontSize)
  
% 绘制第四个子图  
subplot(2, 2, 4); % 2行2列，当前是第4个子图  
plot(1:numIterations, iterationValues4, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(d) Mal'); 
grid on;

set(gca,'FontName','Times New Roman','FontSize',fontSize)
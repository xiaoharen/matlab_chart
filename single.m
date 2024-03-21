fontSize = 30;


% ����ĵ�������  
numIterations = 100;  
  
% ��ʼ���ĸ�����������ÿ�ε�����ֵ��������ʼֵ  
iterationValues1 = zeros(1, numIterations);  
iterationValues2 = zeros(1, numIterations);  
iterationValues3 = zeros(1, numIterations);  
iterationValues4 = zeros(1, numIterations);  
  
% ���������ֵ  
convergedValue = 0;  
  
% ��ʼֵ�������������Ϊ����ֵ����ͨ�������㷨��ȷ��  
initialValue = 0.5;  
  
% Ϊ�ĸ���ͼ���ò�ͬ�ĳ�ʼ�������̣�����Ϊʾ����  
iterationValues1(1) = initialValue;  
iterationValues2(1) = initialValue + 0.1;  
iterationValues3(1) = initialValue - 0.1;  
iterationValues4(1) = initialValue * 0.9;  
  
% ģ��������̣�������iterationValues����  
for iter = 2:numIterations  
    % ʹ��һ���򵥵Ĺ�ʽ��ģ��������̣�����Ϊ������ͼʹ����ͬ�Ĺ�ʽ��  
    iterationValues1(iter) = 0.5 * iterationValues1(iter-1) + 0.1 * convergedValue;  
    iterationValues2(iter) = 0.439 * iterationValues2(iter-1) + 0.2 * convergedValue;  
    iterationValues3(iter) = 0.522 * iterationValues3(iter-1) + 0.3 * convergedValue;  
    iterationValues4(iter) = 0.549 * iterationValues4(iter-1) + 0.4 * convergedValue;  
end  
  
% ����һ���µ�ͼ�δ���  
figure;  
  
% ���Ƶ�һ����ͼ  
subplot(2, 2, 1); % 2��2�У���ǰ�ǵ�1����ͼ  
plot(1:numIterations, iterationValues1, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(a) Drug');
grid on;  

set(gca,'FontName','Times New Roman','FontSize',fontSize)
  
% ���Ƶڶ�����ͼ  
subplot(2, 2, 2); % 2��2�У���ǰ�ǵ�2����ͼ  
plot(1:numIterations, iterationValues2, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(b) GPC');  
grid on;  

set(gca,'FontName','Times New Roman','FontSize',fontSize)
  
% ���Ƶ�������ͼ  
subplot(2, 2, 3); % 2��2�У���ǰ�ǵ�3����ͼ  
plot(1:numIterations, iterationValues3, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(c) IC'); 
grid on;  

set(gca,'FontName','Times New Roman','FontSize',fontSize)
  
% ���Ƶ��ĸ���ͼ  
subplot(2, 2, 4); % 2��2�У���ǰ�ǵ�4����ͼ  
plot(1:numIterations, iterationValues4, '-o');  
xlabel('Iteration number');
ylabel('Convergence rate');
title('(d) Mal'); 
grid on;

set(gca,'FontName','Times New Roman','FontSize',fontSize)
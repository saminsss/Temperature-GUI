clc
clear all
s1 = serial('COM6', ... % Change as needed!
 'BaudRate', 115200, ...
 'Parity', 'none', ...
 'DataBits', 8, ...
 'StopBits', 1, ...
 'FlowControl', 'none');
fopen(s1);
x=0;
while(x<500)
    x=x+1;
    y1(x)=fscanf(s1, '%f');
    y2(x) = 100*(y1(x)-2.73);
    drawnow;
    plot(y2,'b-', 'linewidth',2);
    grid on;
    hold on;
    title('Test');
    xlabel('Time');
    ylabel('Temperature')
    pause(0.5);
end
fclose(s1);
delete(s1);
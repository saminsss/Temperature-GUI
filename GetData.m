try
 fclose(instrfind);
end;
s1 = serial('COM6', ... % Change as needed!
 'BaudRate', 115200, ...
 'Parity', 'none', ...
 'DataBits', 8, ...
 'StopBits', 1, ...
 'FlowControl', 'none');
fopen(s1);
try
 fprintf('Press CTRL+C to finish\n');
 while (1)
 val=fscanf(s1);
 result = sscanf(val, '%f');
 result0 = 100*(result-2.73);
 fprintf('T=%5.2fC\n', result0);
 end
end
fclose(s1);

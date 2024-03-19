function [circumference, area] = bai19_2024()

  
    r = 3;

  
    circumference = 2 * pi * r;
    area = pi * r^2;

 
    theta = linspace(0, 2*pi, 100);
    x = r * cos(theta);
    y = r * sin(theta);

    figure;
    plot(x, y, 'b', 'LineWidth', 2);
    axis equal;
    xlabel('X');
    ylabel('Y');
    
 
    disp(num2str(r));
    disp(num2str(circumference));
    disp(num2str(area));
end

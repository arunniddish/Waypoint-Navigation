origin_x = 0;
origin_y = 0;
origin = [origin_x origin_y];
x = 0;
y = 0;
nodes = zeros(1,10);
new_x(1) = origin_x;
new_y(1) = origin_y;

for i = 2:1:11
    prompt = 'Enter the node';
node(i) = input(prompt,'s');
end

for j = 2:1:11
    if node(j) == 'u'

     y = y+1;

    elseif node(j) == 'd'

        y = y-1;

    elseif node(j) == 'l'

        x = x-1;

    elseif node(j) == 'r'

      x = x+1;

      
else
    disp('invalid')
    end
new_x(j) = x;
new_y(j) = y;
plot(new_x,new_y,'r','Linewidth',2);
hold on
end


     
            
                
    
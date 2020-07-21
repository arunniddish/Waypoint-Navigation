origin_x = 0;
origin_y = 0;
target = 1;
origin = [origin_x origin_y];
x = origin_x;
y = origin_y;
prompt = 'Enter x co-ordinate';
target_x = input(prompt);
prompt = 'Enter y co-ordinate';
target_y = input(prompt);
i = 1;
new_x(1) = origin_x;
new_y(1) = origin_y;
while(target~=0)
u = (((target_x)-x)^2)+(((target_y)-(y+1))^2);
d = (((target_x)-x)^2)+(((target_y)-(y-1))^2);
l = (((target_x)-(x-1))^2)+(((target_y)-y)^2);
r = (((target_x)-(x+1))^2)+(((target_y)-y)^2);
k = (((target_x)-(x+1))^2)+(((target_y)-(y+1))^2);
node = [u d l r k];
dummy = min(node);
i = i+1;
if dummy == u 

    y = y+0.1;

elseif dummy == d

        y = y-0.1;

        
elseif dummy == l

            x = x-0.1;

            
elseif dummy == r

      x = x+0.1;

elseif dummy == k
    
    x = x+0.1;
    y = y+0.1;

else
    disp('invalid')
end
                
                
new_x(i) = x;
new_y(i) = y;
plot(new_x,new_y,'r','Linewidth',2);
hold on
        
        

    target = abs(target_x - new_x) + abs(target_y - new_y);
end
            
                
    
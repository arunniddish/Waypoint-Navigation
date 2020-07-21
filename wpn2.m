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
u_loc = y+8;
d_loc = y-1;
l_loc = x-1;
r_loc = x+1;
diax_loc = x+1;
diay_loc = y+1;
u = (((target_x)-x)^2)+(((target_y)-(u_loc))^2);
d = (((target_x)-x)^2)+(((target_y)-(d_loc))^2);
l = (((target_x)-(l_loc))^2)+(((target_y)-y)^2);
r = (((target_x)-(r_loc))^2)+(((target_y)-y)^2);
k = (((target_x)-(diax_loc))^2)+(((target_y)-(diay_loc))^2);
node = [u d l r k];
dummy = min(node);
i = i+1;
if dummy == u 

    y = u_loc;

elseif dummy == d

        y = d_loc;

        
elseif dummy == l

            x = l_loc;

            
elseif dummy == r

      x = r_loc;

elseif dummy == k
    
    x = diax_loc;
    y = diay_loc;

else
    disp('invalid')
end
                
                
new_x(i) = x;
new_y(i) = y;
plot(new_x,new_y,'r','Linewidth',2);
hold on
        
        

    target = abs(target_x - new_x) + abs(target_y - new_y);
end
            
                
    

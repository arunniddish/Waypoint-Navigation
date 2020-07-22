origin_x = 0;
origin_y = 0;
target = 9999;
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
while(target>=2)
u_loc = y+1;
d_loc = y-1;
l_loc = x-1;
r_loc = x+1;
diax_loc = x+1;
diay_loc = y+1;
u = (((target_x)-x)^2)+(((target_y)-(u_loc))^2);
d = (((target_x)-x)^2)+(((target_y)-(d_loc))^2);
l = (((target_x)-(l_loc))^2)+(((target_y)-y)^2);
r = (((target_x)-(r_loc))^2)+(((target_y)-y)^2);
dia = (((target_x)-(diax_loc))^2)+(((target_y)-(diay_loc))^2);
%% Cost
u_cost = u;
d_cost = d;
l_cost = l;
r_cost = r;
dia_cost = dia;
node = [u_cost d_cost l_cost r_cost dia_cost];
dummy = min(node);
i = i+1;
if dummy == u_cost 

    y = u_loc;

elseif dummy == d_cost

        y = d_loc;

        
elseif dummy == l_cost

            x = l_loc;

            
elseif dummy == r_cost

      x = r_loc;

elseif dummy == dia_cost
    
    x = diax_loc;
    y = diay_loc;

else
    disp('invalid')
end
                
                
new_x(i) = x;
new_y(i) = y;
plot(new_x,new_y,'r','Linewidth',2);
hold on
        
        

    target = sqrt(((target_x - x)^2) + ((target_y - y)^2));
end
            
                
    

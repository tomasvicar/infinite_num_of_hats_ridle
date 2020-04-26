clc;clear all;close all force;

final_win=0;
final_loss=0;

pp=10;

for k=1:100000
    k
    die=nan(1,pp);
    

    a=rand(10000,pp)>0.5;
    
    
    for p=1:pp

        
        stop=1;
        i=0;
        while stop 
            i=i+1;
            if i==10000
                error(':(')
            end
            
            layer=a(i,:);
            my_color=layer(p);
            layer_wm=layer;
            layer_wm(p)=[];
             
%             if (sum(layer_wm)==(pp/2) ) ||(sum(layer_wm)==(pp/2-1) )
%                 stop=0;
%                 if sum(layer_wm)==((pp/2) )
%                     des=0;
%                 else
%                     des=1;
%                 end
% 
%                 if my_color==des
%                     die(p)=0;
%                 else
%                     die(p)=1;
%                 end
%                 
%             end
           
            
        end
    end
    
    if sum(die)>0
       
        
        final_loss=final_loss+1;
        
    else
        final_win=final_win+1;
    end
end



final_win/(final_loss+final_win)


clc;clear all;close all force;

final_win=0;
final_loss=0;



for k=1:10000
    k
    die=nan(1,10);
    

    a=rand(10000,10)>0.5;
    
    
    for p=1:10

        
        stop=1;
        i=0;
        while stop 
            i=i+1;
            if i==10000
                error(':(')
            end
            
            layer=a(i,:);
            layer_wm=layer;
            layer_wm(p)=[];
            my_color=layer(p);
            %search condition
            if sum(layer_wm)==9
                stop=0;               
                des=(rand>0.5);
                if my_color==des
                    die(p)=0;
                else
                    die(p)=1;
                end
                
            end
        end
    end
    
    if sum(die)>0
       
        
        final_loss=final_loss+1;
        
    else
        final_win=final_win+1;
    end
end



final_win/(final_loss+final_win)


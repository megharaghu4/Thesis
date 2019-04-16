function [final_term T] = term_netwpp(T)
a =T;
R = {};
count = 1;
for i = 1:size(a,1)
    
    
    D = [];
    
    term_set = a{i,1};
    
    for j = 1:size(term_set,1)
        D = [];
        D(1,j) = i;%a{i,2}(j,1);
        
    chk2 = term_set{j,1};
    
    for l = i+1:size(a,1)
    
    term_set2 = a{l,1};
    
    for k = 1:size(term_set2,1)
        
        chk1 = term_set2{k,1};
        
        if strcmpi(chk1,chk2)
            
           D = horzcat(D,l);%a{i,2}(i+1,1);  
           
            a{l,1}{k,1} = '';
           
        end
        
        
    end
    end
       
    D = unique(D);
    
    if size(chk2,2) > 2
    final_term{count,1} = chk2;
    
    final_term{count,2} = D;
    
    count = count +1;
    end
    end
    
    
end


end


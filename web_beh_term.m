function [a3 d] = web_beh_term()

 %----------------------------------------------------------------
 
 ar =fopen('real_data6.txt');

% read session from txt file this is real session

clust_real = zeros(1,16);

 d = textscan(ar,'%s','delimiter','%,');
 
 % this loop convert string to number
 
 for i = 1:10000
 
 str = d{1,1}(i,1);            %-----------
 
 s= str2num(str{1,1});
 
 ss = size(s);
 
 for j = ss(2):15
 
 s = horzcat(s,0);           %------------
 
 
 end
 
 clust_real = vertcat(clust_real,s);   %-------------
 
 end
 
 
 % create group of element with same first two node
 %----------------First element--------------------
 
 clust =  clust_real;
 
 s= size(clust);
 
%--------------------3 element------------------------------ 

 
clust = clust_real;
 
s= size(clust);
 
 a3={};
 
 
 num_session = s(1);
 
 
 %d= 0;
 
 count = 1;

 %while num_session > count +4
  
 for i = 1:16
     
     for k = 1:16
         
        for l = 1: 16
        
            
 
                  clust1 = [];
     
                    for j = 1 : num_session
        
       % if num_session > j
        
       
       
     if (isequal(i,clust(j,1)) && isequal(k,clust(j,2)) && isequal(l,clust(j,3) ) && clust(j,1) ~= 0)
        
           clust1= vertcat(clust1,clust(j,:));
           
           %
       end
      % end
                    end
    
    if size(clust1)>1
        
        
        
 a3{count} = clust1;  
 
 count = count + 1;
    end
     end
     
 end
 end


end
    
    

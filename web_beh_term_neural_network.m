function pattern = web_beh_term_neural_network()

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
 page_number= unique(unique(clust));
 page_number=page_number(2:size(page_number,1));
%--------------------3 element------------------------------ 
% neuron{1,1}=page_number;
% count=1;
% for i=1:size(page_number,1)
%     
%     for j=i+1:size(page_number,1)
%     
%         level(count,1)=i;
%     
%         level(count,2)=j;
%     
%         count=count+1;
%     end
%     
% end
%  
% neuron{1,2}=level;
% 
% count=1;
% level=[];
% for i=1:size(page_number,1)
%     
%     for j=i+1:size(page_number,1)
%     
%     
%         for k=j+1:size(page_number,1)
%     
%         
%             level(count,1)=i;
%     
%         
%             level(count,2)=j;
%     
%             level(count,3)=k;
%         
%             count=count+1;
%         end
%     end
%     
% end
% 
% neuron{1,3}=level;

clust = clust_real;
 
s= size(clust);
 
 a3={};
 
 
 num_session = s(1);
 
 
 %d= 0;
 
 count = 1;

 %while num_session > count +4
  neuron_level2=zeros(size(page_number,1),size(page_number,1));
  
  neuron_level3=zeros(size(page_number,1),size(page_number,1),size(page_number,1));
  neuron_level4=zeros(size(page_number,1),size(page_number,1),size(page_number,1),size(page_number,1));
  
 for j = 1 : num_session
     
     x=clust(j,:);
     
     [C Ia Ib]=intersect(page_number,x');
     Ia=x(1,1:4);
     %two pattern
     found=0;
     for m=Ia%1:size(Ia,2)
          if found==1 || m==0 
                   break 
          end
                
         for n=Ia%m+1:size(Ia,2)
             if found==1 || n==0 
                   break 
                end
             if m~=n 
            neuron_level2(m,n)= neuron_level2(m,n)+1;
             
            for i=Ia%n+1:size(Ia,2)
                if found==1 || i==0
                   break 
                end
                if n~=i && m~=i 
                neuron_level3(m,n,i)= neuron_level3(m,n,i)+1;
                for ll=Ia%n+1:size(Ia,2)
               if n~=ll && m~=ll || i~=ll
                   if ll==0
                      found=1;
                      break;
                   end
                neuron_level4(m,n,i,ll)= neuron_level4(m,n,i,ll)+1;
                
                found=1;
                end
                
                end
                
                end
            end
             end
         end
     end
     %three pattern
     
     
 end
 threshold =1;
     %two pattern
     pattern={};
     pattern3={};
     counter=1;
     count=1;
     counter4=1;
     for m=1:size(page_number,1)
         for n=m:size(page_number,1)
             
            x=neuron_level2(m,n);%= neuron_level2(m,n)+1;
             
%             if x>=threshold
%             
%                 pattern{count,1}=[m,n];
%                 pattern{count,2}=x;
%                 count=count+1;
%             end
            
            for i=n:size(page_number,1)
                
                y=neuron_level3(m,n,i);%= neuron_level3(m,n,i)+1;
            
                if y>=threshold
            
                    pattern3{counter,1}=[m,n,i];
                
                    pattern3{counter,2}=y;
                
                    counter=counter+1;
                end
            
                 for ll=i:size(page_number,1)
                
                z=neuron_level4(m,n,i,ll);%= neuron_level3(m,n,i)+1;
            
                if z>=threshold
            
                    pattern4{counter4,1}=[m,n,i,ll];
                
                    pattern4{counter4,2}=y;
                
                    counter4=counter4+1;
                end
            
                 end
            
            end
         end
     end
     %three pattern
 for i=1:counter-1
     i
     pattern{size(pattern,1)+1,1}=pattern3{i,1};
     
     pattern{size(pattern,1),2}=pattern3{i,2};
     
 end
%----------------fourth pattern------------------
 for i=1:counter4-1
     i
     pattern{size(pattern,1)+1,1} = pattern4{i,1};
     
     pattern{size(pattern,1),2} = pattern4{i,2};
     
 end
pattern
end
    
    

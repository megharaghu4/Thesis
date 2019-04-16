function [page] = web_prob_term(pred4,list,logs,final_term)

%pred4 = [1 2 4 1 3 2 1];

s = size(pred4,2);
final_page =[];
r = s;

count =1;
page =0;

index = 1;

p1c1 = [0 0;0 0];

for i = 1:s
    
    count = 0;
    
    x = pred4(1,i);
    
   for j = 1:r
    
       if x == pred4(1,j)
          
           count = count +1;
           
           pred4(1,j) = 0;
       end       
   end
   
   if x~= 0 %&& count >= 1
   
   p1c1(1, index)= x;
   
   p1c1(2, index)= count/s;
   
   index = index +1;
   
   end
end

% if the prob of two page are same then with the help of key feature we can
% differentiate them for better prediction.

[prob1 index1] = max(p1c1(2,:));

% p1c1(2,index1) = 0;
% 
% [prob2 index2] = max(p1c1(2,:));


% now decide which page will be select

[prob1 index1] = sort(p1c1(2,:));

view_terms = {};

for i=1:size(logs,2)
   
    m = logs(1,i);
    if m>0
    for j = 1:size(list{m,2},1)
    view_terms = vertcat(view_terms,list{m,1}{j,1});
    
    end
    end
end
% find the 1st-TermNavNet1st-TermNavNet
count =0;
counter =1;
for i=1:size(view_terms,1)

    chk1 = view_terms{i,1};
    count =0;
    for j=i+1:size(view_terms,1)
   
        chk2 = view_terms{j,1};
        
        if strcmpi(chk1,chk2)
           count = count +1; 
            view_terms{j,1} ='';
        end
        
        
        
    end
    if size(chk1,2) >0
    new_view_list{counter,1} = chk1;
    new_view_list{counter,2} = count/size(view_terms,1);
    counter = counter+1;
    end
    
end
% here we are selecting the page base on web log probablity greater then
% 0.3 and the FVTP maximum keyword collection
counter =1;
for i = 1:size(p1c1,2)
count =0;    
   if p1c1(2,i)> 0.3
       for j = 1:size(new_view_list,1)
   
           tx = new_view_list{j,1};
    
           for k=1:size(list{p1c1(1,i),1},1)
           ty = list{p1c1(1,i),1}{k,1};
    
           if strcmpi(tx,ty)
               
               count = count +1;
               
           end
           end
       end
    
       final_page(1,counter) = count;
   
       final_page(2,counter) = p1c1(1,i);
       counter = counter +1;
       
   
   end
   
end

if size(final_page,2)>0

[prob1 index1] = max(final_page(1,:));

page = final_page(2,index1);
end
% 
% %view_terms = unique(view_terms,'rows');
% 
% for i=1:size(view_terms,1)
% 
%     for j=1:size(p1c1(1,:),1)
%    
%         
%         
%     end
%     
% end
% 
% %----------------------------
% 
% if prob1 == prob2 && p1c1(1,index1)>0
%     
% page = web_page_key(logs,list,p1c1(1,index1),p1c1(1,index2));    
% 
% %if size(key_count,2)>1
%    
% % if key_count(1,index1)> key_count(1,index2)
% % 
% %     page = key_count(2,index1);
% %     
% %     prob = prob1;
% %     
% % else
%     
% prob = prob2;%p1c1(2,final_I);
% 
% %page = p1c1(1,final_I);
% 
% %     page = key_count(2,final_I);
% %     prob = prob2;
%  
% % else
% %     
% %     page = 0;
% %     
% %     prob = 0;
% 
% 
% else
%     
%     page = p1c1(1,index1);
% 
% 
%     prob = prob1;
% 
% end
end


function web_predict_term_modify(list)%a1,a2,a3,a4,list)

sat =0;

order =0;
test_count=1;
page_pred =4;
%list = web_key_pagewise_term();
load list;
[final_term list] = term_netwpp(list);

% Total session for Prediction testing.

ar =fopen('real_data6.txt');

% read session from txt file this is real session

clust_real = [];

d = textscan(ar,'%s','delimiter','%,');
 
 % this loop convert string to number
 
 for i =1:3000   %800
 
 str = d{1,1}(i,1);            %-----------
 
 s= str2num(str{1,1});
 
 ss = size(s);
 
 for j = ss(2):15
 
 s = horzcat(s,0);           %------------
 
 
 end
 
 clust_real = vertcat(clust_real,s);   %-------------
 
 end
 %----------------------------------------------------------

 
 logs = clust_real;

 total = 1;
 
 st_time = tic;

 TP=0;
 TN=0;
 FP=0;
 FN=0;
 %net_ff = web_beh_term_ff_neural_network()
load net_ff;
 for t = 1:size(logs,1)
    
      temp_log = logs(t,:);
     
     temp = logs(t,1:page_pred+1);   % here we control number of page to be predict

%------------for 3rd classifier-------------------------------------

    c3 = 0;

pred3 = [];

if size(temp_log,2)>=2
    
% for i = 1:size(a3,2)
% 
%    
%  %for k = 1:size(a3{1,i},1)
%     
%     chk1 = a3{1,i}(1,:);
%     
% %     xx = intersect(chk1(1,1:3),temp(1,1:3));
% %        
% 
% 
% if chk1(1,1)== temp(1,1)
% 
% if chk1(1,2)== temp(1,2)
%     
%     if chk1(1,3)== temp(1,3)
%     if chk1(1,4) > 0
%     pred3 = [pred3, chk1(1,3)];
%     end
%     end
% end
% end
% %         end
%    % end
%     
% end
%  
%if temp(1,page_pred+1)>0
    feature_vect_temp_1 = temp(1,1:page_pred);
%      chk1 = round(sim(net_ff,feature_vect_temp_1'));
% 
%      pred3 = [pred3, chk1];
for it=1:2
    
     %clust_real(i,1:page_req);

     chk1 = round(sim(net_ff,feature_vect_temp_1'));

     pred3 = [pred3, chk1];
    
end
 

%pred3    
page = web_prob_term(pred3,list,temp(1,1:page_pred),final_term);

if temp(1,page_pred)~=0 && page == temp(1,page_pred)
    
    TP=TP+1;
    
elseif temp(1,page_pred)~=0 && page ~= temp(1,page_pred)
    
    TN=TN+1;
    
elseif temp(1,page_pred)==0 && page ~= temp(1,page_pred)
    
    FP=FP+1;
    
else
    FN=FN+1;
   order = order +1; 
    
end
test_count = test_count+1;
%end
 end
 
 end
 total_time = toc(st_time);
 
disp('-----------Total Time-----------------');

total_time  
 

disp('------Prcision Modify Algorithm--------');
 Precision = TP/(TP+FN)

disp('------Recall Modify Algorithm--------');
 
Recall = TP/(TP+FP)

disp('------F-Measure Modify Algorithm--------');
 
F_Measure= (2*Precision*Recall)/(Precision+Recall)
disp('------Accuracy Modify Algorithm--------');
 
Accuracy = (TP+TN)/(TP+TN+FP+FN)% size(logs,1)
 

end
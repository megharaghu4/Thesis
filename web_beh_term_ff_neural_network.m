function net_ff = web_beh_term_ff_neural_network()

 %----------------------------------------------------------------
 
 ar =fopen('real_data6.txt');

% read session from txt file this is real session
length =5;
clust_real = zeros(1,length);

 d = textscan(ar,'%s','delimiter','%,');
 
 % this loop convert string to number
 
 for i = 1:10000
 
 str = d{1,1}(i,1);            %-----------
 
 s= str2num(str{1,1});
 
 ss = size(s);
 
 for j = ss(2):4
 
 s = horzcat(s,0);           %------------
 
 
 end
 
 clust_real = vertcat(clust_real,s(1,1:length));   %-------------
 
 end
 page_req =4;
 
P = clust_real(:,1:page_req)';%';%feature_vect(1:training_data_size,:)';
T = clust_real(:,page_req)';%';%(1:training_data_size,:)';
TT=T;

%SVMStruct = svmtrain(P,Y');
net = newff(P,T,[7 5]);
net.trainParam.epochs = 5;
net.trainParam.goal = 0.01;
net.trainParam.show = 1;
net.trainParam.mc = 0.9;
net.trainParam.max_fail = 10000;
net.divideFcn = 'dividerand';
net.divideParam.trainRatio = 0.8;
net.divideParam.valRatio = 0.1;
net.divideParam.testRatio = 0.1;
tic;
net_ff = train(net,P,T);

acc= 0;%zeros(1,5);
for i=1:size(T,2)
    feature_vect_temp_1 = clust_real(i,1:page_req);
y = round(sim(net_ff,feature_vect_temp_1'));

if T(1,i)== y
    
    acc =  acc+1;
    

end
end
acc
%Y = round(sim(net_ff,P));
training_time = toc;
training_time
accuracy=acc/i
%  save feature_class_data_final.mat feature_class_data_final
%save net_ff.mat;
end


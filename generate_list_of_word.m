function [list_word list_count] = generate_list_of_word(t,removed)
% ar =fopen('war1.txt');
%  
%  
%  
% 
%  t = textscan(ar,'%s','delimiter','%, %?');
%  
%  d{1,1} = t;
 
 
     
     
 
count = 1;


list_count(1,1) = count;

 
 for i = 1: size(t{1},1)
     
     ch1 = t{1,1}(i,1);
     
     
     
     chk =0;
     
     for j = 1:size(removed{1},1)
         
         ch2 = removed{1,1}(j,1);
         
         if strcmpi(ch1,ch2)
             
            chk =1;
             break;
             
         end
         
     end
     
     if chk == 0
         
         new_list(count,1) = ch1;
         
         count = count + 1;
         
     end
     
 end
 
 
 s = size(new_list,1);
 
 threshold = 7;           % This will work as threshold value

 % this will create word list with number of time it appear.
 
 turn =1;
 
 list_word(1,1) = new_list(1,1);
 
 for i = 1:s-1
     if s>i
 count = 1;
     for j = i+1:s
         
         if s>j
         
         if strcmpi(new_list(i,1),new_list(j,1))
             
             new_list(j,:) = [];
           s = s -1;
           
          count = count +1; 
         end %list_word
         
         end
     
     end
    
     if count > threshold %&& new_list(i,1) ~= []
     
     list_word(turn,1) = new_list(i,1);
     
     list_count(turn,1) = count;
     
     turn = turn +1;
     
     end
     end
 end
 
 t=1;
 
% ar =fopen('art.txt');
 
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');
% 
%  ar =fopen('art.txt');
%  
%  
%  
% 
%  d{2,1} = textscan(ar,'%s','delimiter','%, %?');




end
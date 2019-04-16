function list = web_key_pagewise_term()

%=========================================================


ar =fopen('stopwords.txt');

 removed = textscan(ar,'%s','delimiter','%, %?');

% 
ar =fopen('art.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{1,1}= list_word;

list{1,2} = list_count;




 
%lpvector1 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];



ar =fopen('geo.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');
 
 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{2,1}= list_word;

list{2,2} = list_count;
  
%lpvector2 = termfreq(d,keyss);     %[4,40,40,3,0,0,7,6,6,0,5,4,3,4,1,0,10,9,20,0,8,0,0,2,11,1,0,0,2,10];

ar =fopen('entertainment.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');

 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{3,1}= list_word;

list{3,2} = list_count;
 


%lpvector3 = termfreq(d,keyss);     %[0,0,0,38,37,37,37,0,3,0,35,34,3,1,1,5,3,9,2,2,18,0,0,22,11,0,24,17,12,2];

ar =fopen('fashion.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');

 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{4,1}= list_word;

list{4,2} = list_count;
 
 
%lpvector4 = termfreq(d,keyss);     %[10,10,10,13,13,13,17,10,13,10,35,34,32,1,11,15,13,19,18,12,7,0,0,2,11,0,24,1,12,2];

%lpvector5 = [22,10,0,8,3,7,7,0,3,0,3,4,3,1,1,5,3,9,2,22,18,0,0,22,11,0,4,17,12,2];

ar =fopen('medical.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');

 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{5,1}= list_word;

list{5,2} = list_count;

 
%lpvector5 = termfreq(d,keyss);     %[2,10,0,8,3,7,7,0,3,0,3,4,3,1,1,5,3,9,2,2,1,0,0,2,1,0,4,7,1,2];

% 

ar =fopen('news.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{6,1}= list_word;

list{6,2} = list_count;
 
 
%lpvector6 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('politics.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');

 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{7,1}= list_word;

list{7,2} = list_count;

%lpvector7 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

% 
% 
% 
ar =fopen('research.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{8,1}= list_word;

list{8,2} = list_count;

 
 
%lpvector8 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('social.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{9,1}= list_word;

list{9,2} = list_count;


%lpvector9 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('science.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');

 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{10,1}= list_word;

list{10,2} = list_count;



%lpvector10 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('technology.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{11,1}= list_word;

list{11,2} = list_count;


 
%lpvector11 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('sport.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');

 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{12,1}= list_word;

list{12,2} = list_count;




%lpvector12 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('war.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


 
[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{13,1}= list_word;

list{13,2} = list_count;


 
%lpvector13 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('default.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{14,1}= list_word;

list{14,2} = list_count;

 
%lpvector14 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('crime.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{15,1}= list_word;

list{15,2} = list_count;


 
%lpvector15 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];

ar =fopen('meditation.txt');
 
 
 

 d = textscan(ar,'%s','delimiter','%, %?');


[list_word list_count] = generate_list_of_word(d, removed);             % this will select keyword from the page

list{16,1}= list_word;

list{16,2} = list_count;


 
%lpvector16 = termfreq(d,keyss);     %[4,0,0,3,7,2,7,6,0,0,5,4,3,14,19,1,10,9,0,0,8,13,0,2,5,11,7,0,12,0];


%-----------Generate keywords-------------------------------------------

keyss = list{1,1};

size_key = size(keyss,1);

for i = 2:16
    
    sizze = size(list{i,1},1);
    
    
    
    for j= 1:sizze
        
        ch1 = list{i,1}(j,1);
        
        chk = 0;
        
        for k = 1:size_key
            
            if strcmpi(ch1,keyss(k,1))
                
                chk = 1;
               break; 
            end
            
        end
        
        if chk == 0
            
               
                size_key = size_key +1;
                
                keyss(size_key,1) = list{i,1}(j,1);
                
            end
            
        
    end
    
end



save list.mat;

end


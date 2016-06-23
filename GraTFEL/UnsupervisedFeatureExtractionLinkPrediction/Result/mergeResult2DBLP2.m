fn=strcat('LinkPrediction3DBLP2WS/ResultSA_WS_Study',num2str(1),'.mat');
load(fn)
MS=MasterStamps;
    

RESULT=zeros(3*MasterStamps,13);

I=1;
for S=1:MS
    S
    fn=strcat('LinkPrediction3DBLP2WS/ResultSA_WS_Study',num2str(S),'.mat');
    load(fn)
    
    RESULT(I,:)=[S mean(result)];
    I=I+1;
    RESULT(I,:)=[S mean(resultAdaBoostM1)];
    I=I+1;
    RESULT(I,:)=[S mean(resultRobustBoost)];
    I=I+1;
end

Data='DBLP2';
clearvars -except RESULT Data
save('MergedDBLP22.mat')

quit
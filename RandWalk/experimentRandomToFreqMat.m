%% MATRIX 5 STEPS
m51Freq = pathToFreqMat(m51);
m52Freq = pathToFreqMat(m52);
m53Freq = pathToFreqMat(m53);
m54Freq = pathToFreqMat(m54);
m55Freq = pathToFreqMat(m55);
m56Freq = pathToFreqMat(m56);
m57Freq = pathToFreqMat(m57);
m58Freq = pathToFreqMat(m58);
m59Freq = pathToFreqMat(m59);
m510Freq = pathToFreqMat(m510);

%%
m5SumFreqAvg =  (m51Freq + m52Freq+ m53Freq +m54Freq +m55Freq + m56Freq +m57Freq+ m58Freq +m59Freq + m510Freq)/10; 

heatmap(m5SumFreqAvg); 
%%
save rand5Freq m51Freq m52Freq m53Freq m54Freq m55Freq m56Freq m57Freq m58Freq m59Freq m510Freq m5SumFreqAvg
fprintf('finished saving converted frequency matrices \n'); 
%% MATRIX 10 STEPS
m101Freq = pathToFreqMat(m101);
m102Freq = pathToFreqMat(m102);
m103Freq = pathToFreqMat(m103);
m104Freq = pathToFreqMat(m104);
m105Freq = pathToFreqMat(m105);
m106Freq = pathToFreqMat(m106);
m107Freq = pathToFreqMat(m107);
m108Freq = pathToFreqMat(m108);
m109Freq = pathToFreqMat(m109);
m110Freq = pathToFreqMat(m110);

%% 
m10SumFreqAvg =  (m101Freq + m102Freq+ m103Freq +m104Freq +m105Freq + m106Freq +m107Freq+ m108Freq +m109Freq + m110Freq)/10; 


%%
save rand10Freq m101Freq  m102Freq m103Freq m104Freq m105Freq  m106Freq m107Freq m108Freq m109Freq m110Freq m10SumFreqAvg;
fprintf('finished saving converted frequency matrices \n');



%%
figure; heatmap(m10SumFreqAvg); 


%% MATRIX 20 STEPS
m201Freq = pathToFreqMat(m201);
m202Freq = pathToFreqMat(m202);
m203Freq = pathToFreqMat(m203);
m204Freq = pathToFreqMat(m204);
m205Freq = pathToFreqMat(m205);
m206Freq = pathToFreqMat(m206);
m207Freq = pathToFreqMat(m207);
m208Freq = pathToFreqMat(m208);
m209Freq = pathToFreqMat(m209);
m210Freq = pathToFreqMat(m210);

%%
m20SumFreqAvg =  (m201Freq + m202Freq+ m203Freq +m204Freq +m205Freq + m206Freq +m207Freq+ m208Freq +m209Freq + m210Freq)/10; 
%%
save rand20Freq m201Freq  m202Freq m203Freq m204Freq m205Freq m206Freq m207Freq m208Freq m209Freq  m210Freq m20SumFreqAvg;
fprintf('finished saving converted frequency matrices \n');

heatmap(m20SumFreqAvg); 

%% MATRIX 40 STEPS
m401Freq = pathToFreqMat(m401);
m402Freq = pathToFreqMat(m402);
m403Freq = pathToFreqMat(m403);
m404Freq = pathToFreqMat(m404);
m405Freq = pathToFreqMat(m405);
m406Freq = pathToFreqMat(m406);
m407Freq = pathToFreqMat(m407);
m408Freq = pathToFreqMat(m408);
m409Freq = pathToFreqMat(m409);
m410Freq = pathToFreqMat(m410);
%%
m40SumFreqAvg =  (m401Freq + m402Freq+ m403Freq +m404Freq +m405Freq + m406Freq +m407Freq+ m408Freq +m409Freq + m410Freq)/10; 
%%
save rand40Freq m401Freq  m402Freq m403Freq m404Freq m405Freq m406Freq m407Freq m408Freq m409Freq  m410Freq m40SumFreqAvg;
fprintf('finished saving converted frequency matrices \n');

heatmap(m40SumFreqAvg); 

%% MATRIX 80 STEPS
m801Freq = pathToFreqMat(m801);
m802Freq = pathToFreqMat(m802);
m803Freq = pathToFreqMat(m803);
m804Freq = pathToFreqMat(m804);
m805Freq = pathToFreqMat(m805);
m806Freq = pathToFreqMat(m806);
m807Freq = pathToFreqMat(m807);
m808Freq = pathToFreqMat(m808);
m809Freq = pathToFreqMat(m809);
m810Freq = pathToFreqMat(m810);
%%
m80SumFreqAvg =  (m801Freq + m802Freq+ m803Freq +m804Freq +m805Freq + m806Freq +m807Freq+ m808Freq +m809Freq + m810Freq)/10; 
%%
save rand80Freq m801Freq  m802Freq m803Freq m804Freq m805Freq m806Freq m807Freq m808Freq m809Freq  m810Freq m80SumFreqAvg;
fprintf('finished saving converted frequency matrices \n');

heatmap(m80SumFreqAvg); 

%%
heatmap(m5SumFreqAvg)
heatmap(m10SumFreqAvg)
heatmap(m20SumFreqAvg)
heatmap(m40SumFreqAvg)
heatmap(m80SumFreqAvg)

%%
save RandWalkAvgOriginal m5SumFreqAvg m10SumFreqAvg m20SumFreqAvg m40SumFreqAvg m80SumFreqAvg

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


%%
save rand5Freq m51Freq m52Freq m53Freq m54Freq m55Freq m56Freq m57Freq m58Freq m59Freq m510Freq m5SumFreqAvg
fprintf("finished saving converted frequency matrices \n"); 
%%
m101Freq = pathToFreqMat(m101);
m102Freq = pathToFreqMat(m102);
m103Freq = pathToFreqMat(m103);
m104Freq = pathToFreqMat(m104);
m105Freq = pathToFreqMat(m105);
m106Freq = pathToFreqMat(m106);
m107Freq = pathToFreqMat(m107);
m108Freq = pathToFreqMat(m108);
m109Freq = pathToFreqMat(m109);
m1010Freq = pathToFreqMat(m1010);

%%
m10SumFreqAvg =  (m101Freq + m102Freq+ m103Freq +m104Freq +m105Freq + m106Freq +m107Freq+ m108Freq +m109Freq + m1010Freq)/10; 


%%
save rand10Freq m101Freq  m102Freq m103Freq m104Freq m105Freq  m106Freq m107Freq m108Freq m109Freq m1010Freq;
fprintf("finished saving converted frequency matrices \n"); 
%%

heatmap(m5SumFreqAvg); 
figure; heatmap(m10SumFreqAvg); 



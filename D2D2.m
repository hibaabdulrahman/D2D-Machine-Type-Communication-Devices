clc;clear all;close all

M=1:5:30;
G1=[];
% load BELR
BEL=[.1,.3,.5];
 for kk=1:3
for jj=length(M):-1:1
   
    BELR=BEL(kk).*ones(1,M(jj))./M(jj);
    
Ei=BELR;
Exlegacy(jj,kk)=sum(1./(1-Ei));
ExD(jj,kk)=M(jj)./(1-min(Ei));



    end
     G=[1-(sort(mean(ExD,2),'descend')./mean(Exlegacy,2))];
     G1=[G1,kk/10+G];

end


G1(G1>1)=1;
G1=G1.*100;


figure
plot(M,G1)
ylim([0,110])
 legend(num2str(BEL'))
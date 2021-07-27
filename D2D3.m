clc;clear all;close all

M=1:5:30;
BEL=[.1,.2,.5];

% load BELR
   for kk=1:3
for jj=1:length(M)
 
    BELR=BEL(kk).*rand(1,M(jj))./M(jj);
    
Ei=BELR;
Exlegacy=sum(1./(1-Ei));
ExD=M(jj)./(1-min(Ei));


G(jj,kk)=(Exlegacy-ExD)./Exlegacy;
    end
    BE(jj)=mean(BELR);
    Exl(jj)=Exlegacy;
end
figure
plot(M,G.*100)
legend(num2str(BEL'))
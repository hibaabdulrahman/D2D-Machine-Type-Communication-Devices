clc;clear all;close all

M=1:5:30;
% load BELR
for jj=1:length(M)
    for kk=1:5
    BELR=rand(1,M(jj))./(kk*M(jj));
    
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
legend(num2str(BE'))
xlabel('M user equiments')
ylabel('Gain percentage')
G1=100.*sum(sum(G));

for jj=1:length(M)
    for kk=1:3
    BELR=rand(1,M(jj))./(kk.*M(jj));
    
Ei=BELR;
Exlegacy=sum(1./(1-Ei));
ExD=M(jj)./(1-min(Ei));


G(jj,kk)=(Exlegacy-ExD)./Exlegacy;
    end
    Exl(jj)=Exlegacy;
end
G2=sum(sum(G));
figure
plot(M,abs(G))
xlabel('M user equiments')
ylabel('Gain percentage')
legend('BELR=.1,K=1','BELR=.1,K=2','BELR=.1,K=3','BELR=.2,K=1','BELR=.2,K=2')

figure;
bar([1],[G1],.25)
hold on
bar([2],[G2],.25,'r')
set(gca,'xtick',[1,2])
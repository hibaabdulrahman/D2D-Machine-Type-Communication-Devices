clc;clear all;close all

M=30:-5:1;
% load BELR
for jj=1:length(M)
    
    for kk=1:3
  
      BELR=kk.*rand(1,M(jj))./M(jj);
Ei=BELR;
Exlegacy=sum(1./(1-Ei));
ExD(jj,kk)=M(jj)./(1-max(Ei));


% G(jj,kk)=(Exlegacy-ExD)./Exlegacy;
    end
%    tim(jj)=mean(ExD);
 
end
figure
semilogy(0:4:20,ExD(:,1))
hold on
semilogy(0:4:20,ExD(:,2),'r') 
hold on
semilogy(0:4:20,ExD(:,3),'g')



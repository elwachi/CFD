clc 
clear
close all
x=load("perfil.txt");
p=load("presion.txt");
v=22;
r=1.225;
for m=1:17
f=1;
i=1;
for n=3:50
if p(m,n)!=0
pce(f,m*2-1)=x(n-2,1);
pce(f,m*2)=p(m,n).*2./v.^2;
f++;
endif
endfor
for n=51:90
if p(m,n)!=0
pci(i,m*2-1)=x(n-2,1);
pci(i,m*2)=p(m,n).*2./v.^2;
i++;
endif
endfor
figure(m)
plot(pce(:,m*2-1),pce(:,m*2),"linewidth",2,"r",pci(abs(pci(:,m*2-1))>0,m*2-1),pci(abs(pci(:,m*2-1))>0,m*2),"linewidth",2,"b");
hold on
endfor
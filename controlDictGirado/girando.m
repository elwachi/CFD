clear
clc
p=load("perfil.txt");
c=[0.075 0] %centro
for n=-10:2.5:30
clear f
t=n*pi/180;
r=[cos(t) -sin(t); sin(t) cos(t)];
for i=1:length(p)
f(i,:)=((p(i,:)-c)*r)+c;
endfor
f = [f zeros(length(p),1)];
dlmwrite (["f",num2str(n),".txt"], f)
%plot(f(:,1),f(:,2))
%hold on
endfor
%plot(p(:,1),p(:,2))
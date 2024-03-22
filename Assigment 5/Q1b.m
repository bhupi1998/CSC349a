x=0:0.1:8;
y=cos(x);
L0x = (((x-2).*(x-6))/5).*0.5430; 
L1x = (((x-1).*(x-6))/4).*0.4161; 
L2x = (((x-1).*(x-2))/20).*0.9602;
Px = L0x+L1x+L2x;

%% 1 b
hold on
plot(1,0.5403,'*b');
plot(2,-0.4161,'*b');
plot(6,0.9602,'*b');
plot(x,y);
hold off

%% 1c

hold on
plot(1,0.5403,'*b');
plot(2,-0.4161,'*b');
plot(6,0.9602,'*b');
plot(x,y,'r',x,L0x,'y',x,L1x,'g',x,L2x,'c');
hold off

%% 1d

hold on
plot(1,0.5403,'*b');
plot(2,-0.4161,'*b');
plot(6,0.9602,'*b');
plot(x,y,'r',x,Px,'b');
hold off
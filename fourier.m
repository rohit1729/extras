prompt = 'Do you want fourier coeffient enter the value of n!!! ';
number = input(prompt,'s');
number = str2num(number);
x=[];
y=[];
n=1;

for m=-0.95:0.05:1
    x(n)= m;
    n=n+1;
end
for i=1:1:length(x)
if(x(i)>=0)
    y(i)=1;
  
else
    y(i)=1+x(i);
    
end
end
theta=[];
four=[];
ax=[];
ay=[];
ffc=0;
ffncx=[];
ffncy=[];
for k=0:1:number
    if(k==0)
       a0=[];
       j=1;
       for i=-0.95:0.05:1,
       theta(j)=i*pi;
       a0(j)=y(j);
       ffc=ffc+a0(j);
       j=j+1;
       end
       ffc=ffc/length(a0);
       else
         j=1;
         ffncx(k)=0;
         ffncy(k)=0;
       for i=-0.95:0.05:1
           ax(j)=y(j)*cos(k*theta(j));
            ay(j)=y(j)*sin(k*theta(j));
         ffncx(k)=ffncx(k)+ax(j);
         ffncy(k)=ffncy(k)+ay(j);
                  j=j+1;
       end
        ffncx(k)=(ffncx(k)/length(x))*2;
        ffcny(k)=(ffncy(k)/length(x))*2;
    end
end

for k=1:1:length(x)
    four(k)=ffc;
for z=1:1:number
    four(k)=four(k)+ffncx(z)*cos(z*theta(k))+ffcny(z)*sin(z*theta(k));
end
end

plot(x,y,x,four,'.-'),axis([-2 2 -2 2]),legend('function', 'fourier');

display('end');
display(four);

    


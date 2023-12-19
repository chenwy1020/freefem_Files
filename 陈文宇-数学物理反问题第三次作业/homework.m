xmin=0; xmax=1;
N=20;
h=(xmax-xmin)/N;
x=(0:1:(N-1))*h;
A=zeros(N,N);
I=eye(N);
c=zeros(N,1);
F=zeros(N,1);
for i=1:1:20
    for j=1:1:20
        A(i,j)=-h*(x(i)+1)*exp(-x(i)*x(j))/2;
    end
    F(i)=exp(-x(i))-1.0/2+exp(-x(i)-1)/2;
end

A=A+I;
c=A\F;




























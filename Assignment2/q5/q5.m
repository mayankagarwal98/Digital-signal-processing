function X=q5(X)
X=double(X);
tic
%     X=fft2(X);
%    X=fft((fft(X.')).');
   X=dft(X);
 toc
 X=uint8(abs(X));
end
function Y=dft(Y)
[n m]=size(Y);
  W1=zeros(n,n);
 a=0:n-1;
 repmat(a,n,1);
 b=0:n-1;
 b=b.';
 repmat(a,1,n);
 a=a.*b;
 W1=exp(-2*pi*i*a/n);
 W2=zeros(m,m);
 c=0:m-1;
 repmat(c,m,1);
 d=0:m-1;
 d=d.';
 repmat(c,1,m);
 c=c.*d;
 W1=exp(-2*pi*i*c/m);
 Y=W1*Y*W2;
 end
function X=fft(X)
[n m]=size(X);
if(n~=1)
    even=X(1:2:n,:);
    odd=X(2:2:n,:);
    a=0:n/2-1;
    a=a.';
    repmat(a,1,m);
    A1=fft(even);
    A2=fft(odd);
    A3=exp(-i*2*pi*(a)/n);
    X(1:n/2,:)=A1+A3.*A2;
    X(n/2+1:n,:)=A1-A3.*A2;
end
end
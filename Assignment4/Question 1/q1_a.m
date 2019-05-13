function dctmat=q1_a(n)
a=0:n-1;
a=repmat(a,n,1);
b=0:n-1;
b=repmat(b,n,1);
b=b.';
a=2*a+1;
a=a.*b;
dctmat=sqrt(2/n)*cos((pi*a)/(2*n));
dctmat(1,1:n)=sqrt(1/2)*dctmat(1,1:n);
end


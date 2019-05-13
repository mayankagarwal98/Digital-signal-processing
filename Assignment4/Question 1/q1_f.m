function x=q1_f(im1,im2)
im1=double(im1);
[n n]=size(im1);
im2=double(im2);
st=(im1-im2);
% disp(st);
st=st.*st;
% disp(st);
st=sum(st,'all');
x=sqrt(st)/n;
end

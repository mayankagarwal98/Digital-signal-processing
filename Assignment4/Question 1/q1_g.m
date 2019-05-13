function x=q1_g(im)
p=imhist(im);
% disp(sum(p));
p=p/sum(p);
p=p(p>0);
% disp(p);
x=abs(sum(p.*log2(p)));
end

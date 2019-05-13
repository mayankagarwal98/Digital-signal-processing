F1= imread("F1.jpg");
F2= imread("F2.jpg");

Faces = imread("Faces.jpg");

[N1 M1 D1]=size(F1);

[N2 M2 D2]=size(F2);

[N M D]=size(Faces);

Meanf1=mean2(F1);

Stdf1=std2(F1);

F1=(F1-Meanf1)/Stdf1;
s2=0;
indexi=0;
indexj=0;
for i=1:N-N1
    for j=1:M-M1
        new=Faces(i:i+N1-1,j:j+M1-1);
        mean=mean2(new);
        std=std2(new);
        new=(new-std)/mean;
        ne=new.*F1;
        s1=sum(ne,'all');
        if(s1>s2)
            s2=s1;
            indexi=i;
            indexj=j;
        end
    end
end
fprintf("%d %d %d",s2,indexi,indexj);


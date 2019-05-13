%function B=q4(A,x)
%[n,m,d]= size(A);

%B=zeros(n*x,m*x,d);

%for i=1:n*x
 %   for j=1:m*x
  %      for k=1:d
   %     B(i,j,k)=A(floor((i-1)/x)+1,floor((j-1)/x)+1,k);
    %    end
    %end
%end

%end

function B=q4(A,x)
[n m d] = size(A);

B=zeros(n*x,m*x,d);

for i=1:n
    for j=1:m
        for k=1:d
            B(i*x,j*x,k)=A(i,j,k);
        end
    end
end
for i=1:n*x
    for j=1:m
        if(j==1)
            for k=1:x
                for p=1:d
                    B(i,k,p)=B(i,x,p)*(k-1)/(x-1);
                end
            end
        else
            for k=1:x
                for p=1:d
                    B(i,x*(j-1)+k,p)=B(i,x*(j-1),p)+((B(i,x*(j),p)-B(i,x*(j-1),p))/x)*k;
                end
            end
        end
    end
end
for i=1:m*x
    for j=1:n
        if(j==1)
            for k=1:x
                for p=1:d
                    B(k,i,p)=B(x,i,p)*(k-1)/(x-1);
                end
            end
        else
            for k=1:x
                for p=1:d
                    B(x*(j-1)+k,i,p)=B(x*(j-1),i,p)+((B(x*(j),i,p)-B(x*(j-1),i,p))/x)*k;
                end
            end
        end
    end
end

B=uint8(B)        
end

                
                
        
        
        
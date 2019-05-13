[Y F]=audioread("signal_2.wav");
% sound(Y,F);
X=fft(Y);



for i=1:size(X,1)
    if(abs(real(X(i,1)))<20)
        X(i,1)=0;
        X(i,2)=0;
    end
end
stem(X);
% imagesc(log(abs(fftshift(X))+1));
X=ifft2(X);

 sound(abs(X),F);


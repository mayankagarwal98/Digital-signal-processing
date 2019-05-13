function q7(N,M)
[y,F] = audioread("chirp.wav");
% sound(y,24000);
% spectrogram(y,20,'yaxis',10);
array=im2col(y,[N 1],'sliding');
[N1 M1]=size(array);
array1=array(:,1:M:M1);
A=fft(array1);
imagesc(abs(A));
end


//  2 

function q7
[y,F] = audioread("message.wav");
 sound(y,24000);
 spectrogram(y,2000,'yaxis',1);

end




// 3

function output=q7(X)
sym=[[1336,941];[1209,697];[1336,697];[1477,697];[1209,770];[1336,770];[1477,770];[1209,852];[1336,852];[1477,852]];
fs=5000;
t=0:1/fs:0.5;
t1=0:1/fs:0.3;
no_array=[];
while(X)
    no_array=[no_array,rem(X,10)];
    X=floor(X/10);
end
output=[];
[A N]=size(no_array);
for i=1:N
    a=sym(no_array(i)+1,:);
    output=[sin(2*pi*a(1)*t)+sin(2*pi*a(2)*t),output];
    output=[0*t1,output];
end
 sound(output,fs);
end




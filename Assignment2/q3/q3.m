function q3
[input fs]=audioread("tone.wav");
% sound(input,fs);
[N M]=size(input);
window=N/8;
x=im2col(input,[window,1],'distinct');
x=fft(x);
x=abs(x);
input_freq=[];
for i=0:9
    [b,F]=audioread(strcat(num2str(i),'.ogg'));
    b=resample(b,fs,F);
    b=b(1:window,:);
    b=fft(b);
    input_freq=[input_freq,abs(b)];
end

for i=1:8
    Y=x(:,i);
    Y=Y.*input_freq;
    z=sum(Y);
    [A B]=max(z);
    disp(B-1);
end






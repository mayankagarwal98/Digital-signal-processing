[y,F] = audioread("a.wav");
sound(y,F);
b1= resample(y,240,441);
%sound(b1,24000);

b2= resample(y,160,441);
%sound(b2,24000);

b3= resample(y,80,441);
%sound(b3,24000);

b4= resample(y,40,441);
%sound(b4,24000);

[y1,F1] = audioread("bighall.wav");

b5=conv2(b1,y1);
b5=reshape(b5,[],2);
%sound(b5,24000);

[y1,F1] = audioread("church.wav");

b6=conv2(b1,y1);
b6=reshape(b6,[],2);
%sound(b6,24000);





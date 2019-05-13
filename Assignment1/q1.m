%a = audiorecorder(44100,24,1);

%record(a,5);

b = getaudiodata(a);

sound(b,44100);

fast= resample(b,1,2);

sound(fast,44100);

slow= resample(b,2,1);

sound(slow,44100);

hold on
plot(fast);
plot(slow);
hold off

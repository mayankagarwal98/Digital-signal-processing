a=audioread("sa_re_ga_ma.mp3");

hold on 
n= smoothdata(a,"rloess")
plot(n);
plot(a);

hold off
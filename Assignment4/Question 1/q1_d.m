% qm=zeros(8,8);
% qm(1,1)=16;
% qm(1,2)=11;
% qm(1,3)=10;
% qm(1,4)=16;
% qm(1,5)=24;
% qm(1,6)=40;
% qm(1,7)=51;
% qm(1,8)=61;
% qm(2,1)=12;
% qm(2,2)=12;
% qm(2,3)=14;
% qm(2,4)=19;
% qm(2,5)=26;
% qm(2,6)=58;
% qm(2,7)=60;
% qm(2,8)=55;
% qm(3,1)=14;
% qm(3,2)=13;
% qm(3,3)=16;
% qm(3,4)=24;
% qm(3,5)=40;
% qm(3,6)=57;
% qm(3,7)=69;
% qm(3,8)=56;
% qm(4,1)=14;
% qm(4,2)=17;
% qm(4,3)=22;
% qm(4,4)=29;
% qm(4,5)=51;
% qm(4,6)=87;
% qm(4,7)=80;
% qm(4,8)=62;
% qm(5,1)=18;
% qm(5,2)=22;
% qm(5,3)=37;
% qm(5,4)=56;
% qm(5,5)=68;
% qm(5,6)=109;
% qm(5,7)=103;
% qm(5,8)=77;
% qm(6,1)=24;
% qm(6,2)=35;
% qm(6,3)=55;
% qm(6,4)=64;
% qm(6,5)=81;
% qm(6,6)=104;
% qm(6,7)=113;
% qm(6,8)=92;
% qm(7,1)=49;
% qm(7,2)=64;
% qm(7,3)=78;
% qm(7,4)=87;
% qm(7,5)=103;
% qm(7,6)=121;
% qm(7,7)=120;
% qm(7,8)=101;
% qm(8,1)=72;
% qm(8,2)=92;
% qm(8,3)=95;
% qm(8,4)=98;
% qm(8,5)=112;
% qm(8,6)=100;
% qm(8,7)=103;
% qm(8,8)=99;
function imqDCT=q1_d(imDCT,qm,c)
imqDCT=imDCT./(c*qm);
imqDCT=round(imqDCT);
end
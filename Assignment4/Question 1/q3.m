image=imread("LAKE.TIF");

dctmt=q1_a(8);
dct=@(block_struct) q1_b(block_struct.data,dctmt);
imdct=blockproc(image,[8 8],dct);
subplot(2,1,1);
imshow(uint8(imdct));
title("dct image");


qdct=@(block_struct) q1_d(block_struct.data,qm,2);
imqdct=blockproc(imdct,[8 8],qdct);
subplot(2,1,2);
imshow(uint8(imqdct));
title("quantised dct image");
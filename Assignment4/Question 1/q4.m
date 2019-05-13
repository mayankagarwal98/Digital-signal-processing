image=imread("LAKE.TIF");
compression_factor=4;

subplot(2,1,1);
imshow(uint8(image));
title("original image");

dctmt=q1_a(8);
dct=@(block_struct) q1_b(block_struct.data,dctmt);
imdct=blockproc(image,[8 8],dct);


qdct=@(block_struct) q1_d(block_struct.data,qm,compression_factor);
imqdct=blockproc(imdct,[8 8],qdct);


dqdct=@(block_struct) q1_e(block_struct.data,qm,compression_factor);
imdqdct=blockproc(imqdct,[8 8],dqdct);

idct=@(block_struct) q1_c(block_struct.data,dctmt);
imidct=blockproc(imdqdct,[8 8],idct);
subplot(2,1,2);
imshow(uint8(imidct));
title("recontructed image");

fprintf(" RMSE ->>%f\n",q1_f(image,uint8(imidct)));
fprintf(" Entropy ->>%f\n",q1_g(uint8(imidct)));

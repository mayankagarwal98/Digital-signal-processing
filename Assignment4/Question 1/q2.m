image=imread("LAKE.TIF");
im1=image(420:420+7,45:45+7);
im2=image(427:427+7,298:298+7);
im3=image(30:30+7,230:230+7);
figure
subplot(3,5,1);
imshow(uint8(im1));
title('image with top corner (420,45)');

subplot(3,5,2);
im1dct=q1_b(im1,q1_a(8));
imshow(uint8(im1dct));
title('dct image');

subplot(3,5,3);
im1qdct=q1_d(im1dct,qm,2);
imshow(uint8(im1qdct));
title('quantized matrix');

subplot(3,5,4);
im1dqct1=q1_e(im1qdct,qm,2);
imshow(uint8(im1dqct1));
title('dequantized matrix');

imre=q1_c(im1dqct1,q1_a(8));
subplot(3,5,5);
imshow(uint8(imre));
title('reconstructed image');

subplot(3,5,6);
imshow(uint8(im2));
title('image with top corner (427,298)');

subplot(3,5,7);
im2dct=q1_b(im2,q1_a(8));
imshow(uint8(im2dct));
title('dct image');

subplot(3,5,8);
im2qdct=q1_d(im2dct,qm,2);
imshow(uint8(im2qdct));
title('quantized matrix');

subplot(3,5,9);
im2dqct1=q1_e(im2qdct,qm,2);
imshow(uint8(im2dqct1));
title('dequantized matrix');

imre=q1_c(im2dqct1,q1_a(8));
subplot(3,5,10);
imshow(uint8(imre));
title('reconstructed image');


subplot(3,5,11);
imshow(uint8(im3));
title('image with top corner (30,230)');

subplot(3,5,12);
im1dct=q1_b(im3,q1_a(8));
imshow(uint8(im1dct));
title('dct image');

subplot(3,5,13);
im1qdct=q1_d(im1dct,qm,2);
imshow(uint8(im1qdct));
title('quantized matrix');

subplot(3,5,14);
im1dqct1=q1_e(im1qdct,qm,2);
imshow(uint8(im1dqct1));
title('dequantized matrix');

imre=q1_c(im1dqct1,q1_a(8));
subplot(3,5,15);
imshow(uint8(imre));
title('reconstructed image');







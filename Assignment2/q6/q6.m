img=double(imread("cameraman.tif"));
img1=fft2(img);
img2=fft2(img1);
imshow(abs(img2),[]);
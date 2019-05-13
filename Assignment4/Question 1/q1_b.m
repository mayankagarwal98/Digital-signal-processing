% image=imread("q1_b.TIF");
% image=imresize(image,[8 8]);
% image=double(image);

function X=q1_b(im,F)
im=double(im);
X=F*im*(F.');
% imshow(uint8(X));
end

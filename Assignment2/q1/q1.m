//first part
function Filter=gaussian_filter(N,sigma)
    a=-(N-1)/2:1:(N-1)/2;
    b=-(N-1)/2:1:(N-1)/2;
    [X,Y]=meshgrid(a,b);
    Filter=exp(-(X.^2+Y.^2)/(2*sigma*sigma));
    Filter=Filter./sum(Filter(:))
    h = fspecial('gaussian',N,sigma)
end


//second part
function median_filter(im,N)
pad=padarray(im, [floor(N/2) floor(N/2)]);
col= im2col(pad, [N N], 'sliding');
sorted =sort(col, 1, 'ascend');
median = sorted(floor(N*N/2) + 1, :);
ans = col2im(median, [N N], size(pad), 'sliding');
imshow(ans);
end



// fifth part 
img=imread("inp2.png");
img = fft2(img);
img(50:278,:)=0;
imagesc(log(abs(fftshift(img))+1));
img=ifft2(img);
imshow(abs(img),[]);
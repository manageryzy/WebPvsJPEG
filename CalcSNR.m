src = imread('src.tiff');
src = src(:,:,1:3);

size_jpg = zeros(1,101);
size_webp = zeros(1,101);

snr_jpg = zeros(1,101);
snr_webp = zeros(1,101);

for i=1:100
    path_jpg = ['./out/out_' num2str(i) '.jpg'];
    path_webp = ['./out/out_' num2str(i) '.webp.bmp'];
    path_webp_src = ['./out/out_' num2str(i) '.webp'];
    
    jpg = imread(path_jpg);
    webp = imread(path_webp);
    
    info_jpg = dir(path_jpg);
    info_webp = dir(path_webp_src);
    
    size_jpg(i+1) = info_jpg.bytes;
    size_webp(i+1) = info_webp.bytes;
    
    snr_jpg(i+1) = psnr(jpg,src);
    snr_webp(i+1) = psnr(webp,src);
end

%% figure

figure;
hold on;
title('Size(byte)-SNR');
plot(size_jpg,snr_jpg);
plot(size_webp,snr_webp);
legend('jpg','webp');
grid on;
hold off;

figure;
hold on;
title('Compress Level(%)-SNR');
plot(snr_jpg(2:end));
plot(snr_webp(2:end));
legend('jpg','webp');
grid on;
hold off;
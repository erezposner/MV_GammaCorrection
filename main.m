im = imread('C:\Erez.Posner_to_NAS\PatternDatabank\Codes\L24_Mask_Shift_Hi_Res\mask_L24_Mask_Shift_Hi_Res_1.0e-01_15070_9274_sig0.png');
%%
close all;
figure;
min_r = 200;
max_r = 2000;
im_c = im(min_r:max_r,min_r:max_r);

subplot(2,2,1);
imshow(im_c);

subplot(2,2,3);
histogram(im_c);
% axis([300,400,300,400])
g_im = gammacorrection(im,0.1);
g_im = g_im(min_r:max_r,min_r:max_r);

subplot(2,2,2); imshow(g_im);
% axis([300,400,300,400])
subplot(2,2,4);
histogram(g_im);

% HW 3
f=fopen('goldhill.512','r');
x=fread(f,[512,512],'uchar');
figure(1);
imshow(x'/255);
y=x;
%%y(225:288,225:288)=zeros(64,64);
figure(2);
imshow(y'/255);
d = [0,128,32,160;192,64,224,96;48,176,16,144;240,112,208,80];
c=repmat(d,128);
BW=imbinarize(x,c);
figure(3);
imshow(BW');

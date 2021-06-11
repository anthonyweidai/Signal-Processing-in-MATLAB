hard=imaqhwinfo;
name=hard.InstalledAdaptors{1};
vid=videoinput(name,1);

preview(vid);
% preview(img2);
% pause
start(vid);
% start(img2);
% write i
for i=1:30
    img = getsnapshot(vid);
    image(img);
    HSV=rgb2hsv(img);
    H=HSV(:,:,1);
    S=HSV(:,:,2);
    V=HSV(:,:,3);
    v1=histeq(V);
    newimg=cat(3,H,S,v1);
    img2=hsv2rgb(newimg);
    imshow(img2);
    filename=int2str(i);
    filename=['./image/',filename,'.jpg'];
    imwrite(img2,filename);
    pause(0.5);
end
stop(vid);
closepreview(vid);
delete(vid);
% stop(img2);
% closepreview(img2);
% delete(img2);
clear
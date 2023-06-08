
% sim('odb2.slx');
A=imread('download.jpg');
X=rgb2gray(A);
nx=size(X,1);
ny=size(X,2);
% imshow(X);
% image(X);
B=reshape(X,[1,nx*ny]);
B=double(B)/2;
message = "Ha Noi University of Science and Technology";% tin nhan can nhung
q=double(char(message)); % chuyen sang ma ascii
e=1;
ys1=ys';
ym1=ym';
n=numel(ym);%tinh chieu dai cua mang
k2=zeros(1,length(B));
ym3=zeros(1,length(B));
B1=zeros(1,n);
ym2 = ym1*5  ;  %nang len 5 don vi
k1=zeros(1,n);
 for i=1:1:n
     if tout(i)> 5+(e-1)*0.08  %nhung vao khoang thoi gian giay thu 
if e<=length(B)
    
   B1(i)=B1(i)+B(e);%tin nhan can gui

ym2(i)=ym2(i)+B1(i);%nhung


k1(i)=ym2(i)-ys1(i)*5;%giai ma
k2(e)=k1(i);%giai ma
ym3(e)=ym2(i);% nhung
  e=e+1; 
end
    end
 end
k2=k2*2;
edges1 = [-10:1:150];
edges2 = [-200:1:500];
F=reshape(round(ym3),[nx,ny]);
% F= cat(3, F, F, F);
F = uint8(F); %%nhung
G=reshape(round(k2),[nx,ny]);
% G= cat(3, G, G, G);
G = uint8(G); %%giaima
U=X-G;
l=round(B*2)-round(k2);
 figure;
histogram(B*2,edges1)
 figure;
histogram(round(ym3),edges2)  %% nhung
figure;
histogram(round(k2),edges1) %% giai ma
figure;
imshow(F); %%ve khong mau



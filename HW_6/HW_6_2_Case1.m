mx = 50;
sx = 20;
my = 1500;
sy = 200;

r1 = 0; 
r2 =0.3;
r3 = 0.8;
r4 = -0.8;

subplot(2,2,1)

arr_1 = zeros(101,1000);
for x = 0:+1:100
for y = 1000:+1:2000
z1 = ((x-25)^2)./900 + ((y-1250)^2)./90000 - (2*r1*(x-25)*(y-1250))./9000;
f=(1./(2*pi*30*3000*sqrt(1-r1^2))) * exp(-z1./(2*(1-r1^2)));
arr_1(x+1,y-999)=f;
end
end

imagesc([0 100], [1000 2000], arr_1)
colormap(jet);
colorbar;
title('\rho = 0');

subplot(2,2,2)
arr_2 = zeros(101,1000);
for x = 0:+1:100
for y = 1000:+1:2000
z2 = ((x-75)^2)./900 + ((y-1750)^2)./90000 - (2*r1*(x-75)*(y-1750))./9000;
f=(1./(2*pi*30*3000*sqrt(1-r1^2))) * exp(-z2./(2*(1-r1^2)));
arr_2(x+1,y-999)=f;
end
end

imagesc([0 100], [1000 2000], arr_2)
colormap(jet);
colorbar;
title('\rho = 0.3');

arr_3 = zeros(101,1000);
FinalX = 0;
FinalY = 0;
M = max(arr_1,arr_2);
for x = 1:+1:101
for y = 1000:+1:2000
    a = arr_1(x,y-999);
    b = arr_2(x,y-999);
    if (a-b)<0.005*max(arr_1,arr_2);
    arr_3(x,y-999)=1;
    end
end
end
 arr_4 = zeros(1,1000);
 subplot(2,2,3)
 PX=[0 100];
 PY=[1000 2000];
 S = sum(arr_3);
 plot(S);

% subplot(2,2,4)
% plot(arr_3)
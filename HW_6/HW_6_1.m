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
z1 = ((x-mx)^2)./400 + ((y-1500)^2)./40000 - (2*r1*(x-mx)*(y-my))./4000;
f=(1./(2*pi*20*2000*sqrt(1-r1^2))) * exp(-z1./(2*(1-r1^2)));
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
z2 = ((x-mx)^2)./400 + ((y-1500)^2)./40000 - (2*r2*(x-mx)*(y-my))./4000;
f=(1./(2*pi*20*2000*sqrt(1-r2^2))) * exp(-z2./(2*(1-r2^2)));
arr_2(x+1,y-999)=f;
end
end

imagesc([0 100], [1000 2000], arr_2)
colormap(jet);
colorbar;
title('\rho = 0.3');

subplot(2,2,3)
arr_3 = zeros(101,1000);
for x = 0:+1:100
for y = 1000:+1:2000
z3 = ((x-mx)^2)./400 + ((y-1500)^2)./40000 - (2*r3*(x-mx)*(y-my))./4000;
f=(1./(2*pi*20*2000*sqrt(1-r3^2))) * exp(-z3./(2*(1-r3^2)));
arr_3(x+1,y-999)=f;
end
end


imagesc([0 100], [1000 2000], arr_3)
colormap(jet);
colorbar;
title('\rho = 0.8');

subplot(2,2,4)
arr_4 = zeros(101,1000);
for x = 0:+1:100
for y = 1000:+1:2000
z3 = ((x-mx)^2)./400 + ((y-1500)^2)./40000 - (2*r4*(x-mx)*(y-my))./4000;
f=(1./(2*pi*20*2000*sqrt(1-r4^2))) * exp(-z3./(2*(1-r4^2)));
arr_4(x+1,y-999)=f;
end
end

imagesc([0 100], [1000 2000], arr_4)
colormap(jet);
colorbar;
title('\rho = -0.8');
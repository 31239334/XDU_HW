clc,clear
close all
%% 复合信号
N=2^13;%采样点数
Fs=10000;%采样率
F=100;%信号频率
dt=1/Fs;

t=1/Fs:1/Fs:N/Fs;
L=length(t);
s=5*cos(2*pi*F*t);
figure()
plot(t,s);
ylabel('幅度(V)');
xlabel('时间(s)');
set(gca,'FontWeight','bold','FontSize',10)
axis([0 0.5 -6 6])
figure()
temps=abs(s);
hist(temps,100)
xlabel("幅度(V)")
ylabel("个数")
set(gca,'FontWeight','bold','FontSize',10)

n=1*randn(size(t));
figure()
plot(t,n);
ylabel('幅度(V)');
xlabel('时间(s)');
set(gca,'FontWeight','bold','FontSize',10)
axis([0 0.5 -inf inf])
figure()
hist(n,100)
xlabel("幅度(V)")
ylabel("个数")
set(gca,'FontWeight','bold','FontSize',10)

x=s+n;
figure()
plot(t,x);
ylabel('幅度(V)');
xlabel('时间(s)');
set(gca,'FontWeight','bold','FontSize',10)
axis([0 0.5 -inf inf])
%% 
%幅度分布
figure()
tempx=abs(x);
hist(tempx,100)
xlabel("幅度(V)")
ylabel("个数")
set(gca,'FontWeight','bold','FontSize',10)
%功率谱密度
[Gx,fGx]=pwelch(x,[],[],length(x),Fs);
Gx=[Gx(end:-1:1);Gx];
fGx=[-fGx(end:-1:1);fGx];
figure()
plot(fGx,Gx,'linewidth',2)
xlabel("频率(Hz)")
ylabel("PSD(W/Hz)")
set(gca,'FontWeight','bold','FontSize',10)
axis([-200 200 -inf inf])
%% 通过RC积分电路
R=1;
C=1;
a=1/(R*C);
%频谱
FFTx=fft(x,N);              %离散傅里叶变换
FFTx=FFTx(1:L/2+1);
fx=(0:(L/2))*Fs/N;          %不同点对应的幅值,最多一半，因为奈奎斯特采样定理
%幅度分布
H1_abs=a./sqrt(a^2+fx.^2);
FFTy1=FFTx.*H1_abs;
y1=ifft(FFTy1,N);
y1=real(y1)*2;
figure()
subplot(2,1,1)
hist(y1,100)
xlabel("幅度(V)")
ylabel("个数")
title('通过RC积分电路后的幅度分布特性')
set(gca,'FontWeight','bold','FontSize',10)
%功率谱密度
H1_2=1./(1+(fGx/a).^2);
Gy1=Gx.*H1_2;
% figure()
subplot(2,1,2)
plot(fGx,Gy1,'linewidth',2)
xlabel('频率(Hz)');
ylabel("PSD(W/Hz)")
title('通过RC积分电路后的功率谱密度')
set(gca,'FontWeight','bold','FontSize',10)
axis([-200 200 -inf inf])

%% 通过理想低通滤波器
Fc=150;  %截止频率
K0=1;
H2=fx;
H2(H2<=Fc)=1;
H2(H2>Fc)=0;
H2=H2*K0;
%幅频特性
H2_abs=H2;
FFTy2=FFTx.*H2_abs;
y2=ifft(FFTy2,N);
y2=real(y2)*2;
figure()
subplot(2,1,1)
hist(y2,100)
xlabel("幅度(V)")
ylabel("个数")
title('通过理想低通滤波器后的幅度分布特性')
set(gca,'FontWeight','bold','FontSize',10)
%功率谱密度
H2=fGx;
H2(abs(H2)<=Fc)=1;
H2(abs(H2)>Fc)=0;
H2=H2*K0;
H2_2=H2.^2;
Gy2=Gx.*H2_2;
subplot(2,1,2)
plot(fGx,Gy2,'linewidth',2)
xlabel('频率(Hz)');
ylabel("PSD(W/Hz)")
title('通过理想低通滤波器后的功率谱密度');
set(gca,'FontWeight','bold','FontSize',10)
axis([-200 200 -inf inf])
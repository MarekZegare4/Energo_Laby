% ------------ STEP-DOWN ------------

% 1.
% L4, C4
% Prąd ciągły 90us ->

clr = ["#D95319" "#EDB120" "#7E2F8E" "#77AC30" "#4DBEEE" "#A2142F"];

T_1 = 112.4e-6;
Uin_1 = 15;
Iob_1 = 50e-3;
Tgora_1 = sort([102.4, 84.8, 74.4, 63.6, 44.4, 27.6, 17.6, 12, 51.2]*10^(-6), "ascend");
Duty_1 = (Tgora_1/T_1)*100;
Uout_1 = sort([13.42, 12.44, 11.96, 10.93, 8.36, 4.6, 2.03, 1.1, 9.4], "ascend");

prcg_1 = (90e-6/T_1)*100;

figure(1)
plot(Duty_1,Uout_1, 'LineStyle','--', 'Marker','x', 'MarkerSize',14)
grid on
ylabel("Napięcie wyjściowe [V]")
xlabel("Wypełnienie [%]")
title("Zależność napięcia wyjściowego od wypełnienia")
text(12,12, {"I obciążenia = 50 mA ","U wejściowe = 15 V"}, 'FontSize',14)
xline(prcg_1)
text(50, 3,"  Prąd ciągły \rightarrow", "FontSize",14)


% 2. 
% L4, C4
% Prąd ciągły 55.3mA ->

Uin_2 = 15;
T_2 = 112.4e-6;
Tgora_2 = 83.2e-6;
Duty_2 = (Tgora_2/T_2)*100;

Uout_2 = [12.49, 12.33, 12.12, 11.89, 11.42, 10.67, 10.51, 10.38, 10.28];
Iout_2 = [44.8, 49, 56.3, 65.1, 73.6, 86.8, 115.7, 154, 185.9];%*10^(-3);

figure(2)
plot(Iout_2,Uout_2, 'LineStyle','--', 'Marker','x', 'MarkerSize',14)
grid on
ylabel("Napięcie wyjściowe [V]")
xlabel("Prąd obciążenia [mA]")
title("Zależność napięcia wyjścia od prądu obciążenia")
text(120,12, {"Wypełnienie = 74 % ","U wejściowe = 15 V"}, 'FontSize',14)
xline(55.3)
text(57, 11,"Prąd ciągły \rightarrow", "FontSize",14)

% 3.1
% L4, C4
% Prąd ciągły 61mA ->
Uin_3 = 12;
T_3 = 113.6e-6;
Uout_3_1 = 8.64;
Tgora_3_1 = [53.6, 59.2, 62, 68.4, 83.6, 84.4, 86.4, 87.6]*10^(-6);
Duty_3_1 = 100*Tgora_3_1/T_3;
Iout_3_1 = [30.9, 36.7, 42.6, 54.3, 71.2, 94, 135.2, 183];%*10^(-3);

% 3.2
% Prąd ciągły 83mA ->
Uout_3_2 = 6;
Tgora_3_2 = [30, 33.2, 34.4, 38, 42.8, 46.8, 54, 57.2, 60.8, 63.2]*10^(-6);
Iout_3_2 = [21.5, 25.6, 29.4, 37.7, 46.2, 58.1, 75, 85.3, 106.8, 181.6];%*10^(-3);
Duty_3_2 = 100*Tgora_3_2/T_3;

% 3.3
% Prąd ciągły 73.6mA ->
Uout_3_3 = 4.2;
Tgora_3_3 = sort([18.8, 29.4, 22.8, 24.8, 28, 30, 34, 38.8, 43.6, 45.6]*10^(-6), "ascend");
Iout_3_3 = sort([25.3, 17.9, 22.7, 28.11, 33.9, 38.3, 50.6, 65.4, 83.5, 108.8], "ascend");%*10^(-3);
Duty_3_3 = 100*Tgora_3_3/T_3;

% 3.4
% Prąd ciągły 70mA ->
Uout_3_4 = 3;
Tgora_3_4 = [12, 14, 14.8, 16.4, 18.8, 22.4, 26.4, 30, 32, 32.8, 32.4]*10^(-6);
Iout_3_4 = [10.6, 14, 16.8, 20.7, 25.4, 35.9, 49.1, 63.7, 69.5, 103.9, 77.5];%*10^(-3);
Duty_3_4 = 100*Tgora_3_4/T_3;

figure(3)
plot(Duty_3_1,Iout_3_1, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(1))
hold on
plot(Duty_3_2,Iout_3_2, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(2))
plot(Duty_3_3,Iout_3_3, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(3))
plot(Duty_3_4,Iout_3_4, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(4))
ylabel("Prąd obciążenia [mA]")
xlabel("Wypełnienie [%]")
title("Zależność prądu obciążenia od wypełnienia")
grid on
yline(61,'Color',clr(1))
yline(83, 'Color',clr(2))
yline(73.6,'Color',clr(3))
yline(70,'Color',clr(4))
legend("Uout = 8,64 [V]","Uout = 6 [V]", "Uout = 4,2 [V]","Uout = 3 [V]",'','','','','Location','northwest' )
text(20,120,'Prąd ciągły \uparrow', 'FontSize',14)


% 4.1
% L1, C1
T_4 = 113.6e-6;
Uin_4 = 12;
Tgora_4 = 83e-6;
Iout_4_1 = [22.3, 26, 28.8, 35.4, 44.1, 55.8, 81, 126]*10^(-3);
A_4_1 = [102, 110, 118, 122, 128, 130, 152, 152]*10^(-3); % tętnienia
Duty_4 = Tgora_4*100/T_4;

% 4.2
% L1, C2
% Prąd nieciągły
Iout_4_2 = [41.8, 50.5, 64.6, 91.7, 126.2, 167.8];%*10^(-3);
A_4_2 = [252, 284, 348, 468, 612, 764]*10^(-3);
Uout_4_2 = [11.63, 11.55, 11.44, 11.22, 10.96, 10.65];

% 4.3
% L1, C3
% Prąd nieciągły
Iout_4_3 = sort([42, 50.6, 65.2, 82, 101.2, 144.7, 123.1], "ascend");%*10^(-3);
A_4_3 = sort([476, 552, 684, 836, 1000, 1400, 1230]*10^(-3), "ascend");
Uout_4_3 = [11.68, 11.61, 11.51, 11.39, 11.26, 10.96, 11.11];

% 4.4
% L1, C4
Iout_4_4 = [42, 52.7, 60, 76.2, 98.4, 165.6];%*10^(-3);
A_4_4 = [2.64,3.20, 3.44, 4.12, 4.92, 6.88];
Uout_4_4 = [11.69, 11.6, 11.55, 11.43, 11.25, 10.75];

% 4.5
% L1, C4
Iout_4_5 = [32.5, 42.5, 56.5, 78.6, 100.4, 101.6];%*10^(-3);
A_4_5 = [290, 320, 350, 374, 402, 412]*10^(-3);
Uout_4_5 = [9.04, 8.36, 8.12, 8.05, 7.92, 7.85];

figure(4)
plot(Iout_4_5,100*A_4_5./Uout_4_5, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(1))
hold on
plot(Iout_4_2,100*A_4_2./Uout_4_2, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(2))
plot(Iout_4_3,100*A_4_3./Uout_4_3, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(3))
%plot(Iout_4_4,100*A_4_4./Uout_4_4, 'LineStyle','none', 'Marker','x', 'MarkerSize',14, 'Color',clr(4))
xlabel("Prąd obciążenia [mA]")
ylabel("Wspólczynnik tętnień [%]")
grid on
legend("C4", "C2","C3", "Location","northwest")
title("Zależność współczynnika tętnień od prądu obciążenia")
text(30,10,{"Wypełnienie = 73 %","Częstotliwość = 8,8 kHz"},'FontSize',14)



% 5.1
% C1
Iout_5 = 73e-3;
f_5_1 = [6.35, 7.39, 9.7, 13.92, 18.43, 29.19, 48, 110];%*10^3;
A_5_1 = [372, 348, 300, 232, 197, 162, 110, 52]*10^(-3);
Uout_5_1 = [11.05, 10.93, 10.68, 10.21, 9.75, 9.05, 7.33, 5.8];


% 5.2
% C2
f_5_2 = [6.35, 7.42, 9.15, 14.62, 21.73, 36.32, 110];%*10^3;
A_5_2 = [716, 636, 528, 348, 232, 151, 52]*10^(-3);
Uout_5_2 = [11.17, 11.02, 10.81, 10.18, 9.47, 8.23, 5.81];

% 5.3
% C3
f_5_3 = [6.35, 8.1, 11.5, 17, 28, 46.3, 110];%*10^3;
A_5_3 = [1500, 1180, 812, 552, 338, 176, 66]*10^(-3);
Uout_5_3 = [11.37, 11.07, 10.62, 10.03, 9.05, 7.62, 5.82];

% 5.4
% C4
f_5_4 = [6.35, 7.3, 10, 15.4, 25.56, 59.2 110];%*10^3;
A_5_4 = [8640, 6040, 4020, 2670, 930, 570, 256]*10^(-3);
Uout_5_4 = [10.3, 11.05, 11.2, 10.53, 9.51, 7.41, 5.82];


figure(5)
plot(f_5_1,100*A_5_1./Uout_5_1, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
hold on
plot(f_5_2,100*A_5_2./Uout_5_2, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(2))
plot(f_5_3,100*A_5_3./Uout_5_3, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(3))
plot(f_5_4,100*A_5_4./Uout_5_4, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(4))
xlabel("Częstotliwość [kHz]")
ylabel("Wspólczynnik tętnień [%]")
grid on
legend("C1", "C2","C3","C4", "Location","northwest")
title("Zależność współczynnika tętnień od częstotliwości")
text(40,40,{"Prąd obciążenia = 73 mA"},'FontSize',14)


% 6.1
T_6 = 95.2e-6;
Iout_6 = 60.5e-3;
Uin_6 = 12;
Tgora_6_1 = [14.4, 36, 64, 77.6, 86]*10^(-6);
A_6_1 = [156, 284, 192, 156, 116]*10^(-3);
Uout_6_1 = [3.05, 9.58, 11.19, 11.44, 11.53];

% 6.2
Tgora_6_2 = [13.6, 30.4, 56, 76.8, 83.2]*10^(-6);
A_6_2 = [1720, 3700, 2630, 1940, 1600]*10^(-3);
Uout_6_2 = [3.7, 10.03, 11.43, 11.62, 11.66];

figure(6)
plot(100*Tgora_6_1/T_6,100*A_6_1./Uout_6_1, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
hold on
plot(100*Tgora_6_2/T_6,100*A_6_2./Uout_6_2, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(2))
xlabel("Wypełnienie [%]")
ylabel("Wspólczynnik tętnień [%]")
title("Zależność współczynnika tętnień od wypełnienia")
grid on
legend("C1", "C4", "Location","northwest")
text(40,40,{"Prąd obciążenia = 60,5 mA", "Częstotliwość = 10,5 kHz", "Napięcie wejściowe = 12 V"},'FontSize',14)

% Sprzężenie
% 7.
Iout_7 = 32.2e-3;
Uin_7 = [7.5, 9.2, 11.8, 14.6, 19.5, 28.8];
Tgora_7 = [117, 78, 65, 62, 59.2, 47.6]*10^(-6);
T_7 = [145, 102, 103, 83, 81.6, 68.8]*10^(-6);

figure(7)
plot(Uin_7, 100*Tgora_7./T_7, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
xlabel("Napięcie wejściowe [V]")
ylabel("Wspólczynnik wypełnienia [%]")
title("Zależność wypełnienia od napięcia zasilania")
grid on
%legend("C1", "C4", "Location","northwest")
text(15, 78,{"Prąd obciążenia = 32.2 mA"},'FontSize',14)

% 8.
Uin_8 = 12;
Iout_8 = [17.7, 22.6, 50.3, 72.9, 111.4]%*10^(-3);
Tgora_8 = [10.4, 13, 77.6, 84, 103]*10^(-6);
T_8 = [16.9, 19.2, 124.4, 143, 188]*10^(-6);

figure(8)
plot(Iout_8, 100*Tgora_8./T_8, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
xlabel("Prąd obciążenia [mA]")
ylabel("Wspólczynnik wypełnienia [%]")
title("Zależność wypełnienia od prądu obciążenia")
grid on
%legend("C1", "C4", "Location","northwest")
text(60, 64,{"Napięcie zasilania = 12 V"},'FontSize',14)
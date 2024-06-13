% ------------ STEP-UP ------------
clr = ["#D95319" "#EDB120" "#7E2F8E" "#77AC30" "#4DBEEE" "#A2142F"];

% widmo = csvread("SDS00001.DAT");
% figure(7)
% plot(widmo(:,1), widmo(:,2), widmo(:, 1), widmo(:,3))

% 1.
T_1 = 168e-6;
Uin_1 = 4;
Iob_1 = 45.3e-3;
Tgora_1 = sort([153, 140, 117, 62, 35.6, 67.2, 115.6]*10^(-6), "descend");
Uout_1 = sort([3.91, 4.29, 5.87, 14.01, 19.4, 13.5, 6], "ascend");
Tosc_1 = [0, 0, 67.2, 35.2, 0, 37.2, 66.8]*10^(-6);
Duty_1 = 100 - (Tgora_1/T_1)*100;

figure(1)
[Duty_1,idx] =sort( 1 - Tgora_1/T_1);
Uout_1 = Uout_1(idx);
Uout_1_t = 4./(1 - Duty_1);

plot(100 - 100*Duty_1, Uout_1_t, 'Color',"#7E2F8E", "LineStyle",'-', 'Marker','+', 'MarkerSize',10)
hold on
plot(100 - 100*Duty_1,Uout_1, 'LineStyle','--', 'Marker','x', 'MarkerSize',14)
grid on
ylabel("Napięcie wyjściowe [V]")
xlabel("Wypełnienie [%]")
title("Zależność napięcia wyjściowego od wypełnienia")
text(60,14, {"I obciążenia = 45.3 mA ","U wejściowe = 4 V"}, 'FontSize',14)
legend("Wartości teoretyczne","Wartości zmierzone",'','','','','Location','northeast' )
%xline(prcg_1)
%text(50, 3,"  Prąd ciągły \rightarrow", "FontSize",14)

% 2.
Tgora_2 = 140.4e-6;
Tosc_2 = 67.6e-6;
Uin_2 = 4;
Uout_2 = [7.33, 7.03, 6.77, 6.55, 6.36, 6.17, 5.85, 5.6, 5.37, 4.63, 4.48, 4.26];
Iout_2 = [13, 14, 15, 16, 17, 18, 20, 22, 24, 35, 40, 49]%*10^(-3);

figure(2)
plot(Iout_2,Uout_2, 'LineStyle','--', 'Marker','x', 'MarkerSize',14)
grid on
ylabel("Napięcie wyjściowe [V]")
xlabel("Prąd obciążenia [mA]")
title("Zależność napięcia wyjścia od prądu obciążenia")
text(30,6.5, {"U wejściowe = 4 V"}, 'FontSize',14)
%xline(55.3)
%text(57, 11,"Prąd ciągły \rightarrow", "FontSize",14)

% 3. L4, C4
T_3 = 129e-6;
Uin_3 = [3.5, 3.5, 3.5, 3.5];
Uout_3 = [4.9, 7, 9.8, 14];
Iout_3 = [8, 14.5, 22.1, 26.5]*10^(-3);
Tgora_3 = [102.4, 73.2, 43.6, 29.4]*10^(-6);

% ZADANIE 3
% 4.1
T_4 = 129e-6;
Uin_4_1 = 3.5;
Uout_4_1 = 4.9;
Iout_4_1 = sort([8.7, 11.1, 13.3, 15.6, 58.4, 30.5, 18.8], "ascend")%*10^(-3);
Tgora_4_1 = sort([101.4, 97.4, 94, 91.2, 90.8, 84.8, 87.2]*10^(-6), "descend");
Duty_3_1 = 100 - 100*Tgora_4_1/T_4;

% 4.2
Uin_4_2 = 3.5;
Uout_4_2 = 7;
Iout_4_2 = [11.7, 13.5, 17, 19.1, 20.5, 47, 77]%*10^(-3);
Tgora_4_2 = [79.2, 75.2, 68.8, 65.2, 61.2, 57.4, 52.8]*10^(-6);
Duty_3_2 = 100 - 100*Tgora_4_2/T_4;

% 4.3
Uin_4_3 = 3.5;
Uout_4_3 = 9.8;
Iout_4_3 = [16.8, 17.4, 37.6, 49.2, 73.4, 82.1]%*10^(-3);
Tgora_4_3 = [48.8, 44.8, 40.4, 39, 35.2, 32.6]*10^(-6);
Duty_3_3 = 100 - 100*Tgora_4_3/T_4;

% 4.4
Uin_4_4 = 3.5;
Uout_4_4 = 14;
Iout_4_4 = sort([26.2, 45.4, 59.4, 42.7], "ascend")%*10^(-3);
Tgora_4_4 = sort([29, 25.8, 22.6, 24.8]*10^(-6), "descend");
Duty_3_4 = 100 - 100*Tgora_4_4/T_4;

figure(3)
plot(Iout_4_1, Duty_3_1, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(1))
hold on
plot(Iout_4_2,Duty_3_2, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(2))
plot(Iout_4_3,Duty_3_3, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(3))
plot(Iout_4_4,Duty_3_4, 'LineStyle','--', 'Marker','x', 'MarkerSize',14, 'Color',clr(4))
xlabel("Prąd obciążenia [mA]")
ylabel("Wypełnienie [%]")
title("Zależność prądu obciążenia od wypełnienia")
grid on
% xline(61,'Color',clr(1))
% xline(83, 'Color',clr(2))
% xline(73.6,'Color',clr(3))
% xline(70,'Color',clr(4))
legend("Uout = 4,9 [V]","Uout = 7 [V]", "Uout = 9,8 [V]","Uout = 14 [V]",'','','','','Location','northeast' )
% text(90,20,'Prąd ciągły \rightarrow', 'FontSize',14);


% 5.
Iout_5 = 26e-3;
T_5 = 75.2e-6;
Tdol_5 = 54.8e-6;
% C1
f_5_1 = [5.85, 6.56, 7.69, 8.93, 11.2]%*10^3;
A_5_1 = [468, 404, 320, 276, 210]%*10^(-3);
% C2
f_5_2 = [5.85, 6.89, 8.53, 11.26, 14.12]%*10^3;
A_5_2 = [106, 98, 67, 51, 35.6]%*10^(-3);
% C3
f_5_3 = [5.85, 6.45, 7.3, 9.32, 12.44]%*10^3;
A_5_3 = [48.4, 44.8, 40, 33.2, 26]%*10^(-3);
% C4
f_5_4 = [5.85, 6.3, 6.89, 8, 10.3, 13.3]%*10^3;
A_5_4 = [15.6, 13.4, 12.2, 9.9, 8.3, 6.8]%*10^(-3);

% 6.
f_6 = 10.2e3;
T_6 = 98e-6;
Iob_6 = 32e-3;
% C1
Tgora_6_1 = [88.4, 82.8, 67.6, 49.6, 30.8]*10^(-6);
A_6_1 = [46, 66.4, 115, 174, 250]%*10^(-3);
% C2
Tgora_6_2 = [88.4, 79.2, 67.6, 43.2, 34, 16.8]*10^(-6);
A_6_2 = [10.6, 15.5, 25.2, 47.2, 54.8, 81]%*10^(-3);
% C3
Tgora_6_3 = [88.4, 84.4, 70.4, 44.8, 29.6, 15.2]*10^(-6);
A_6_3 = [6.4, 8, 12.9, 23.6, 30.2, 38.4]%*10^(-3);


% Zadanie 4.1 C3, L3
F_7 = 9.44e3;
T_7_1 = [144, 156, 170, 184, 202, 226]*10^(-3);
Iob_7_1 = [14, 16.3, 19.7, 25, 32.7, 51.5]%*10^(-3);
Uout_7_1 = [6.51,6.03,5.53 ,5.02, 4.55, 4.23];

% C2, L3
T_7_2 = [272, 284, 332, 334, 412, 464]*10^(-3);
Iob_7_2 = [11.7, 13.7, 17.2, 19.6, 28.3, 51.6]%*10^(-3);
Uout_7_2 = [7.16, 6.57, 5.89, 5.54, 4.78, 4.2];

% C1, L3
T_7_3 = [2030, 1920, 1720, 1470, 1320, 1160]*10^(-3);
Iob_7_3 = [49.2, 30, 22.4, 17.4, 14, 11.5]%*10^(-3);
Uout_7_3 = [4.01, 4.5, 5.06, 5.69, 6.35, 7.08];

% C4, L3
T_7_4 = [35.6, 36.8, 40.8, 47.6, 52, 61.2]*10^(-3);
Iob_7_4 = [11.7, 13.6, 15.7, 23, 30.3, 52]%*10^(-3);
Uout_7_4 = [7.19, 6.64, 6.14, 5.2, 4.7, 4.24];

figure(4)
plot(Iob_7_1, T_7_1./Uout_7_1 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
hold on
plot(Iob_7_2, T_7_2./Uout_7_2 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(2))
plot(Iob_7_3, T_7_3./Uout_7_3 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(3))
plot(Iob_7_4, T_7_4./Uout_7_4 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(4))
xlabel("Prąd obciążenia [mA]")
grid on
ylabel("Współczynnik tętnień [%]")
legend("C3", "C2","C1","C4", "Location","northeast")
title("Zależność współczynnika tętnień od obciążenia")
text(30,30,{"Częstotliwość = 9.44 kHz"},'FontSize',14)

% Zadanie 5.
% C1, L3
Iob_8_1 = 15e-3;
F_8_1 = [5.87, 7.18, 8.93, 11.44, 17.73, 104.52]%*10^3;
T_8_1 = [2.39, 1.89, 1.5, 1.052, 0.592, 0.1];
Uout_8_1 = [7.58, 6.94, 6.31, 5.68, 4.89, 4.73];

% C2, L3
Iob_8_2 = 15e-3;
F_8_2 = [5.86, 7.02, 8.41, 11.69, 15.04, 19.23, 104.5]%*10^3;
T_8_2 = [0.56, 0.408, 0.33, 0.218, 0.154, 0.1056, 0.0248];
Uout_8_2 = [7.86, 7.23, 6.68, 5.74, 5.18, 4.83, 4.75];

% C3, L3
Iob_8_3 = 15e-3;
F_8_3 = [5.86, 7.33, 12.6, 15.01, 21.58, 104.37]%*10^3;
T_8_3 = [0.249, 0.193, 0.101, 0.0772 , 0.0468, 0.014];
Uout_8_3 = [7.88, 7.12, 5.60, 5.2 , 4.72, 4.75];

% C4, L3
Iob_8_4 = 15e-3;
F_8_4 = [5.87, 8.67, 11.8, 16.11, 22.59, ]%*10^3;
T_8_4 = [0.066, 0.0432, 0.0312, 0.0236, 0.0168, ];
Uout_8_4 = [7.91, 6.6, 5.73, 5.09, 4.65, ];

figure(5)
plot(F_8_1, T_8_1./Uout_8_1 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
hold on
plot(F_8_2, T_8_2./Uout_8_2 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(2))
plot(F_8_3, T_8_3./Uout_8_3 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(3))
plot(F_8_4, T_8_4./Uout_8_4 * 100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(4))
xlabel("Częstotliwość [kHz]")
ylabel("Współczynnik tętnień [%]")
grid on
legend("C1", "C2","C3","C4", "Location","northeast")
title("Zależność współczynnika tętnień od częstotliwości")
text(40,20,{"Prąd obciążenia = 15 mA"},'FontSize',14)

% Zadanie 6. 
% C1, L3
T_9 = 66.6; % us
Iob_9_1 = 25e-3;
T_9_1 = [1.64, 1.31, 1.09, 0.69, 0.43];
D_9_1 = [13.8, 32, 42.6, 53.8, 59.8]; % us
Uout_9_1 = [15.6, 7.97, 5.41, 3.92, 3.52];

% C3, L3
Iob_9_1 = 25e-3;
T_9_2 = [0.051, 0.098, 0.136, 0.153, 0.165];
D_9_2 = [58.8, 47.6, 30.2, 21, 14.6]; % us
Uout_9_2 = [3.55, 4.61, 8.11, 10.51, 14.37];

figure(6)
plot(100 - D_9_1/T_9*100, T_9_1./Uout_9_1*100 ,'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(1))
hold on
plot(100 - D_9_2/T_9*100, T_9_2./Uout_9_2*100, 'LineStyle','-.', 'Marker','x', 'MarkerSize',10, 'Color',clr(2))
xlabel("Wypełnienie [%]")
ylabel("Współczynnik tętnień [%]")
title("Zależność amplitudy tętnień od wypełnienia")
grid on
legend("C1", "C3", "Location","northwest")
text(30, 10,{"Prąd obciążenia = 25 mA", "Częstotliwość = 15,01 kHz"},'FontSize',14)
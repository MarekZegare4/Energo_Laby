% ------------ ZASILACZE LINIOWE ------------

clr = ["#D95319" "#EDB120" "#7E2F8E" "#77AC30" "#4DBEEE" "#A2142F"];

% 1. Transformator
Uin_1_1 = 5;
R_1_1 = [2, 5, 10, 50];
I_1_1 = [1.48, 0.807, 0.442, 0.096];
U_1_1 = [4.49, 4.73, 4.84, 4.95];


Uin_1_2 = 7.5;
R_1_2 = [5, 10, 50, 100];
I_1_2 = [1.2, 0.662, 0.145, 0.076];
U_1_2 = [7.06, 7.28, 7.44, 7.46];


Uin_1_3 = 10;
R_1_3 = [10, 20, 50, 100];
I_1_3 = [0.870, 0.467, 0.192, 0.1];
U_1_3 = [9.57, 9.72, 9.83, 9.88];

Uin_1_4 = 15;
R_1_4 = [10, 20, 50, 100];
I_1_4 = [1.330, 0.724, 0.295, 0.154];
U_1_4 = [14.67, 14.88, 15.06, 15.1];

Uin_1_5 = 20;
R_1_5 = [20, 50, 100, 200];
I_1_5 = [0.955, 0.389, 0.203, 0.098];
U_1_5 = [19.63, 19.82, 19.84, 19.91];

Uin_1_6 = 24;
R_1_6 = [20, 50, 100, 200];
I_1_6 = [1.148, 0.468, 0.244, 0.119];
U_1_6 = [23.6, 23.86, 23.9, 23.92];

figure(1)
plot(I_1_1, U_1_1, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
grid on
hold on
plot(I_1_2, U_1_2, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_1_3, U_1_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_1_4, U_1_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_1_5, U_1_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_1_6, U_1_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
xlabel("Prąd obciążenia [A]")
ylabel("Napięcie wyjściowe [V_{rms}]")
legend("V_{zas} = 5V", "V_{zas} = 7,5V","V_{zas} = 10V", "V_{zas} = 15V", "V_{zas} = 20V", "V_{zas} = 24V")
title({"Zależność napięcia na wyjściu transformatora ", "od prądu obciążenia"})



% 2. Transformator z prostownikiem C = 1mF

Uin_2_1 = 5;
R_2_1 = [2, 5, 10, 20, 50];
I_2_1 = [0.872, 0.549, 0.330, 0.189, 0.081];
U_2_1 = [2.66, 3.25, 3.65, 3.91, 4.15];
T_2_1 = [1.04, 0.77, 0.507, 0.315, 0.149];

Uin_2_2 = 7.5;
R_2_2 = [5, 10, 20, 50, 100];
I_2_2 = [0.881, 0.53, 0.303, 0.129, 0.069];
U_2_2 = [5.2, 5.85, 6.27, 6.6, 6.79];
T_2_2= [1.23, 0.804, 0.497, 0.229, 0.13];

Uin_2_3 = 10;
R_2_3 = [5, 10, 20, 50, 100];
I_2_3 = [1.2, 0.72, 0.411, 0.176, 0.094];
U_2_3 = [7.13, 7.95, 8.48, 8.99, 9.23];
T_2_3 = [1.55, 1.08, 0.677, 0.315, 0.174];

Uin_2_4 = 15;
R_2_4 = [10, 20, 50, 100, 200];
I_2_4 = [1.128, 0.645, 0.274, 0.146, 0.072];
U_2_4 = [12.42, 13.28, 14, 14.32, 14.46];
T_2_4 = [1.7, 1.04, 0.48, 0.267, 0.141];

Uin_2_5 = 20;
R_2_5 = [10, 20, 50, 100, 200];
I_2_5 = [1.526, 0.867, 0.37, 0.197, 0.097];
U_2_5 = [16.71, 17.87, 18.78, 19.18, 19.46];
T_2_5 = [2.26, 1.41, 0.641, 0.352, 0.19];

Uin_2_6 = 24;
R_2_6 = [20, 50, 100, 200, 500];
I_2_6 = [1.048, 0.446, 0.237, 0.117, 0.047];
U_2_6 = [21.56, 22.73, 23.16, 23.57, 23.85];
T_2_6 = [1.68, 0.766, 0.431, 0.228, 0.116];

Uin_2_7 = 12;
R_2_7 = [5, 10, 20, 50, 100];
I_2_7 = [1.444, 0.864, 0.497, 0.21, 0.112];
U_2_7 = [8.52, 9.56, 10.22, 10.75, 10.98];
T_2_7 = [1.96, 1.29, 0.784, 0.359, 0.205];

figure(2)
plot(I_2_1, U_2_1, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
grid on
hold on
plot(I_2_2, U_2_2, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_3, U_2_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_7, U_2_7, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_4, U_2_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_5, U_2_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_6, U_2_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)

xlabel("Prąd obciążenia [A]")
ylabel("Napięcie wyjściowe [V]")
legend("V_{zas} = 5V", "V_{zas} = 7,5V","V_{zas} = 10V", "V_{zas} = 12V", "V_{zas} = 15V", "V_{zas} = 20V", "V_{zas} = 24V")
title({"Zależność napięcia na wyjściu transformatora ", "z prostownikiem od prądu obciążenia"})
text(0.95,3, "Pojemność filtrująca = 1mF", 'FontSize',13)


figure(3)
plot(I_2_1, 100*T_2_1./U_2_1, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
grid on
hold on
plot(I_2_2, 100*T_2_2./U_2_2, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_3, 100*T_2_3./U_2_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_7, 100*T_2_7./U_2_7, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_4, 100*T_2_4./U_2_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_5, 100*T_2_5./U_2_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_2_6, 100*T_2_6./U_2_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)

xlabel("Prąd obciążenia [A]")
ylabel("Współczynnik tętnień napięcia wyjściowego [%]")
legend("V_{zas} = 5V", "V_{zas} = 7,5V","V_{zas} = 10V", "V_{zas} = 12V", "V_{zas} = 15V", "V_{zas} = 20V", "V_{zas} = 24V")
title({"Zależność współczynnika tętnień napięcia na wyjściu ", "transformatora z prostownikiem od prądu obciążenia"})
text(0.2,30, "Pojemność filtrująca = 1mF", 'FontSize',13)


% 3. Dioda zen.
Uin_3 = 10;
R_3 = [11, 16, 21, 31, 51, 101, 201, 501];
I_3 = [0.636, 0.479, 0.378, 0.263, 0.158, 0.083, 0.039, 0.016];
U_3 = [7.08, 7.7, 7.94, 8.12, 8.19, 8.21, 8.22, 8.22];
T_3 = [0.701, 0.4275, 0.251, 0.083, 0.0437, 0.0382, 0.0361, 0.0346];

% 3.2 
Uin_3_2 = [10, 9.5, 9, 8.5, 8, 7.5, 10.5, 8.8];
[Uin_3_2, idx] = sort(Uin_3_2);

U_3_2 = [8.22, 8.21, 8.17, 8.12, 8.02, 7.7, 8.29, 8.15];
R_3_2 = inf;
I_3_2 = [0.450, 0.33, 0.22, 0.13, 0.02, 0, 0.57, 0.2];

U_3_2 = U_3_2(idx);
I_3_2 = I_3_2(idx)*1000;

figure(4)
yyaxis left
plot(I_3, U_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
ylabel("Napięcie wyjściowe [V]")
yyaxis right
plot(I_3, 100*T_3./U_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
xlabel("Prąd obciążenia [A]")
ylabel("Współczynnik tętnień napięcia wyjściowego [%]")
grid on
title("Charakterystyki zasilacza z diodą Zenera")
text(0.1, 4, "Napięcie wejściowe: 10V")


figure(5)
yyaxis left
plot(Uin_3_2, U_3_2, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
ylabel("Napięcie wyjściowe [V]")
yyaxis right
plot(Uin_3_2, I_3_2, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
xlabel("Napięcie wejściowe [V]")
ylabel("Prąd diody Zenera [mA]")
grid on
title("Charakterystyki zasilacza z diodą Zenera w stanie rozwarcia")



% 3.3 - - zasilacze liniowe

Uin_3_3 = [15.56, nan, nan, 17.15, 17.35];
U_3_3 = [12, 12.17, 12.2, 12.2, 12.21];
I_3_3 = [1.08, 0.587, 0.237, 0.123, 0.06];
R_3_3 = [11, 21, 51, 101, 201];
T_3_3 = [0.203, 0.02, 0.02, 0.02, 0.02];

[U_3_3, idx] = sort(U_3_3);
I_3_3 = 1000*I_3_3(idx);
T_3_3 = T_3_3(idx);
R_3_3 = R_3_3(idx);


% 3.4
Uin_3_4 = 14;
U_3_4 = [12.21, 8.8, 10.17, 11.03, 11.7, 11.99, 12.17, 12.21, 11.37];
I_3_4 = [0, 1.48, 0.918, 0.53, 0.227, 0.121, 0.059, 0.024, 0.367];
R_3_4 = [inf, 6, 11, 21, 51, 101, 201, 501, 31];
T_3_4 = [0, 1.43, 1.16, 0.763, 0.354, 0.168, 0.06, 0.04,0];

[U_3_4, idx] = sort(U_3_4);
I_3_4 = 1000*I_3_4(idx);
T_3_4 = T_3_4(idx);
R_3_4 = R_3_4(idx);

% 3.5 
Uin_3_5 = 5.87;
I_3_5  = [0, 0.370, 0.438, 0.312, 0.18, 0.079, 0.042, 0.022, 0.008];
U_3_5 = [5, 2.23, 1.35, 3.48, 3.79, 4.09, 4.24, 4.38, 4.49];
R_3_5 = [inf, 6, 3, 11, 21, 51, 101, 201, 501];
T_3_5 = [0, 1.04, 0.789, 0.425, 0.277, 0.14, 0.08, 0.047, 0.029];

[U_3_5, idx] = sort(U_3_5);
I_3_5 = 1000*I_3_5(idx);
T_3_5 = T_3_5(idx);
R_3_5 = R_3_5(idx);

% 3.6
Uin_3_6 = 10.69;
U_3_6 = [4.6, 5.15, 5.16, 5.16, 5.17, 5.17, 5.17, 5.17];
I_3_6 = [1.49, 0.866, 0.465, 0.248, 0.1, 0.052, 0.026, 0.01];
R_3_6 = [3, 6, 11, 21, 51, 101, 201, 501];
T_3_6 = [0.46, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2];

[U_3_6, idx] = sort(U_3_6);
I_3_6 = 1000*I_3_6(idx);
T_3_6 = T_3_6(idx);
R_3_6 = R_3_6(idx);

figure(6)
yyaxis left
plot(I_3_3, U_3_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
hold on
grid on
plot(I_3_4, U_3_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_5, U_3_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_6, U_3_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
ylabel("Napięcie wyjściowe [V]")

yyaxis right
plot(I_3_3, 100*T_3_3./U_3_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
hold on
grid on
plot(I_3_4, 100*T_3_4./U_3_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_5, 100*T_3_5./U_3_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_6, 100*T_3_6./U_3_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)

xlabel("Prąd obciążenia [A]")
ylabel("Współczynnik tętnień napięcia wyjściowego [%]")
grid on
title("Charakterystyki zasilacza z diodą Zenera")


figure(7)
plot(I_3_3, 100*T_3_3./U_3_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
hold on
grid on
plot(I_3_4, 100*T_3_4./U_3_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_6, 100*T_3_6./U_3_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_5, 100*T_3_5./U_3_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)


xlabel("Prąd obciążenia [m]")
ylabel("Współczynnik tętnień napięcia wyjściowego [%]")
grid on
title("Zależność współczynnika tętnień od prądu obciążenia")
legend("U_{zas} = 17V", "U_{zas} = 14V", "U_{zas} = 10,69V", "U_{zas} = 5,87V")

figure(8)
plot(I_3_3, U_3_3, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
hold on
grid on
plot(I_3_4, U_3_4, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_6, U_3_6, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)
plot(I_3_5, U_3_5, "LineStyle","-.", "Marker",'x', 'MarkerSize',10)

ylabel("Napięcie wyjściowe [V]")
xlabel("Prąd obciążenia [mA]")
title("Zależność napięcia wyjściowego od prądu obciążenia")

legend("U_{zas} = 17V", "U_{zas} = 14V", "U_{zas} = 10,69V", "U_{zas} = 5,87V")
% stepdown sym

uout_1= [ 1.3098 5.174  8.3332 10.399 11.7030 12.4350 12.95 13.337 13.6302 ];
d_1 = 0.1:0.1:0.9;


clr = ["#D95319" "#EDB120" "#7E2F8E" "#77AC30" "#4DBEEE" "#A2142F"];

T_1 = 112.4e-6;
Tgora_1 = sort([102.4, 84.8, 74.4, 63.6, 44.4, 27.6, 17.6, 12, 51.2]*10^(-6), "ascend");
Duty_1 =(Tgora_1/T_1)*100;
Uout_1 = sort([13.42, 12.44, 11.96, 10.93, 8.36, 4.6, 2.03, 1.1, 9.4], "ascend");

figure(1)
plot(100*d_1, uout_1, 'Marker', '+', 'LineStyle','-.', 'Color',clr(2))
hold on
plot(Duty_1, Uout_1, 'Marker', '+', 'LineStyle','-.', 'Color',clr(3))
grid on
title("Charakterystyka napięcia wyjściowego od wypełnienia sygnału kluczującego")
xlabel("Wypełnienie [%]")
ylabel("Napięcie [V]")
legend("Symulacja LTSpice", "Pomiary", 'Location','northwest')
text(50,5,{"Częstotliwość kluczowania = 8,89 kHz", "Prąd obciążenia = 50 mA ", "Napięcie wejściowe = 15V"}, 'FontSize', 14)

% napięcie od obciążenia
uout2bez = [13.464 13.116 12.8 12.492 12.192 11.909 11.637 11.387 11.267 11.221  11.288 11.199 10.987 11.073 11.4 11.647 11.85 ];
iout2 = 40 : 10: 200;

uout2 = [12.4903 11.94 11.41 10.9 10.42 9.96 9.51 9.104 8.89 8.7 8.494 8.33 8.17 7.94 7.78 7.58 7.39  ];

Uout_2 = [12.49, 12.33, 12.12, 11.89, 11.42, 10.67, 10.51, 10.38, 10.28];
Iout_2 = [44.8, 49, 56.3, 65.1, 73.6, 86.8, 115.7, 154, 185.9];

figure(2)
plot(iout2, uout2, 'Marker', '+', 'LineStyle','-.', 'Color',clr(3))
hold on
plot(Iout_2, Uout_2, 'Marker', '+', 'LineStyle','-.', 'Color',clr(2))
grid on
title("Charakterystyka napięcia wyjściowego od prądu obciążenia")
xlabel("Prąd obciążenia [mA]")
ylabel("Napięcie [V]")
legend("Symulacja LTSpice", "Pomiary", 'Location','northeast')
text(50,5,{"Częstotliwość kluczowania = 8,89 kHz", "Prąd obciążenia = 50 mA ", "Napięcie wejściowe = 15V"}, 'FontSize', 14)

% 

dane = csvread("dane_stepdown2.csv");
iout3v = dane(1:15);
iout42v = dane(16:30);
iout6v = dane(31:45);
iout864v = dane(46:60);
duty = 10:5:80;

plot(iout3v, duty, iout42v, duty, iout6v, duty, iout864v, duty)





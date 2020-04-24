s=tf('s');

gpi=5.75*(1+.53*s)/s;
gs1=.24;
gs2=30/(1+.005*s);
gs3=.242/(1+.53*s);
gs4=1/(1+.055*s);

gs=gs1*gs2*gs3*gs4;

go=gpi*gs;


%?berpr?fung des OFFENEN Regelkreises zur ermittlung des Phasenrandes und
%der Durchtrittsfrequenz
figure(); %ohne zahl in klammern ?ffnet diese Anweisung immer ein neues Fenster
bode(go); %Erzeugung des Bodediagramms
grid on;

figure();
margin(go); %margin liefert direkt den Phasen und Amplitudenrand in der Grafik
grid on;

figure();
gw=feedback(go,1); %feedback(Vorw?rts?bertragungsfunktion([?blicherweise =go],R?ckw?rts?bertragungsfunktion[?blicherweise=1])
bode(gw);
grid on;

figure();
step(gw); %erzeugt Sprungantwort
grid on;

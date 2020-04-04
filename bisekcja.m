function bisekcja(f)
printf('Podaj: \n');
Eps=input('B³¹d: '); %b³¹d z jakim szukamy miejsca zerowego
a=input('Pocz¹tek przedzia³u: ');     	%pocz¹tek przedzia³u
b=input('Koniec przedzia³u: ');         	%koniec przedzia³u
fa=f(a); %wartoœæ pocz¹tka przedzia³u
fb=f(b); %wartoœæ koñca przedzia³u
while(sign (fa) == sign (fb)) %porównanie znaków wartoœci funkcji na koñcach
printf ('Z³y przedzia³, koñce przedzia³ów musz¹ mieæ ró¿ne znaki \n');
a=input('Nowy pocz¹tek przedzia³u: ');     	%pocz¹tek przedzia³u
b=input('Nowy koniec przedzia³u: ');         	%koniec przedzia³u
fa=f(a); %wartoœæ pocz¹tku przedzia³u
fb=f(b); %wartoœæ koñca przedzia³u
endwhile
i=0; % i to iloœæ wykonanych obrotów pêtli
while(abs(a-b)>2*Eps) % sprawdzenie d³ugoœci przedzia³u czy wiêkszy od 2*Eps
s=(a+b)/2; % wyliczenie œrodka przedzia³u
fs=f(s); %wartoœæ dla œrodka przedzia³u
i=i+1; % dodanie 1 do obrotu pêtli
if (sign (fa) == sign (fs)) %porównanie znaków wartoœci funkcji w a i s
a=s; % jeœli wartoœci na pocz¹tku i œrodku przedzia³u jest takie samo to
fa=fs; % zamiana œrodka przedzia³u na nowy pocz¹tek
else  % analogicznie przypisanie wartoœci funkcji dla œrodka i pocz¹tku
b=s; % jeœli znaki waroœci w pocz¹tku i œrodku przedzia³u s¹ ró¿ne
fb=fs; % to zamiana œrodka przedzia³u na nowy koniec
endif
endwhile
pierw=(a+b)/2; % miejscem zerowym jest œrodek wyliczonego przedzia³u
printf('Miejsce zerowe funkcji to: %.10f \n',pierw); %wyœwietlenie wyników
printf('Wartoœæ funkcji w wyznaczonym miejscu zerowym to: %.10f \n',f(pierw));   
printf('Iloœæ wykonanych obrotów pêtli: %d \n',i);  	
endfunction




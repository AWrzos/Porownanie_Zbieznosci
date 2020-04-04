function bisekcja(f)
printf('Podaj: \n');
Eps=input('B��d: '); %b��d z jakim szukamy miejsca zerowego
a=input('Pocz�tek przedzia�u: ');     	%pocz�tek przedzia�u
b=input('Koniec przedzia�u: ');         	%koniec przedzia�u
fa=f(a); %warto�� pocz�tka przedzia�u
fb=f(b); %warto�� ko�ca przedzia�u
while(sign (fa) == sign (fb)) %por�wnanie znak�w warto�ci funkcji na ko�cach
printf ('Z�y przedzia�, ko�ce przedzia��w musz� mie� r�ne znaki \n');
a=input('Nowy pocz�tek przedzia�u: ');     	%pocz�tek przedzia�u
b=input('Nowy koniec przedzia�u: ');         	%koniec przedzia�u
fa=f(a); %warto�� pocz�tku przedzia�u
fb=f(b); %warto�� ko�ca przedzia�u
endwhile
i=0; % i to ilo�� wykonanych obrot�w p�tli
while(abs(a-b)>2*Eps) % sprawdzenie d�ugo�ci przedzia�u czy wi�kszy od 2*Eps
s=(a+b)/2; % wyliczenie �rodka przedzia�u
fs=f(s); %warto�� dla �rodka przedzia�u
i=i+1; % dodanie 1 do obrotu p�tli
if (sign (fa) == sign (fs)) %por�wnanie znak�w warto�ci funkcji w a i s
a=s; % je�li warto�ci na pocz�tku i �rodku przedzia�u jest takie samo to
fa=fs; % zamiana �rodka przedzia�u na nowy pocz�tek
else  % analogicznie przypisanie warto�ci funkcji dla �rodka i pocz�tku
b=s; % je�li znaki waro�ci w pocz�tku i �rodku przedzia�u s� r�ne
fb=fs; % to zamiana �rodka przedzia�u na nowy koniec
endif
endwhile
pierw=(a+b)/2; % miejscem zerowym jest �rodek wyliczonego przedzia�u
printf('Miejsce zerowe funkcji to: %.10f \n',pierw); %wy�wietlenie wynik�w
printf('Warto�� funkcji w wyznaczonym miejscu zerowym to: %.10f \n',f(pierw));   
printf('Ilo�� wykonanych obrot�w p�tli: %d \n',i);  	
endfunction




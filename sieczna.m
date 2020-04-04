function sieczna(f)
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
fa=f(a); %warto�� pocz�tka przedzia�u
fb=f(b); %warto�� ko�ca przedzia�u
endwhile
i=0; % i to ilo�� wykonanych obrot�w p�tli
while(abs(b-a)>Eps) % sprawdzenie d�ugo�ci przedzia�u czy wi�kszy o epsilon
s = a - fa * (b - a) / (fb - fa); %wyliczenie punktu przeci�cia siecznej z a i b
a=b; %z osi� y=0 i zmienienie ko�c�w przedzia��w na nowe
b=s;
fa=fb; % zmiana warto�ci funkcji w punktach na nowe
fb=f(s);
i=i+1; % dodanie jednego obrotu do p�tli
endwhile
printf('Miejsce zerowe funkcji to: %.10f \n',s)   %wy�wietlenie wynik�w
printf('Warto�� funkcji w wyznaczonym miejscu zerowym to: %.10f \n',f(s))   
printf('Ilo�� wykonanych obrot�w p�tli: %d \n',i)  	
endfunction
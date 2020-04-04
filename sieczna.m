function sieczna(f)
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
fa=f(a); %wartoœæ pocz¹tka przedzia³u
fb=f(b); %wartoœæ koñca przedzia³u
endwhile
i=0; % i to iloœæ wykonanych obrotów pêtli
while(abs(b-a)>Eps) % sprawdzenie d³ugoœci przedzia³u czy wiêkszy o epsilon
s = a - fa * (b - a) / (fb - fa); %wyliczenie punktu przeciêcia siecznej z a i b
a=b; %z osi¹ y=0 i zmienienie koñców przedzia³ów na nowe
b=s;
fa=fb; % zmiana wartoœci funkcji w punktach na nowe
fb=f(s);
i=i+1; % dodanie jednego obrotu do pêtli
endwhile
printf('Miejsce zerowe funkcji to: %.10f \n',s)   %wyœwietlenie wyników
printf('Wartoœæ funkcji w wyznaczonym miejscu zerowym to: %.10f \n',f(s))   
printf('Iloœæ wykonanych obrotów pêtli: %d \n',i)  	
endfunction
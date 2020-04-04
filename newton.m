function newton(f)
printf('Podaj: \n');
Eps=input('B��d: '); %b��d z jakim szukamy miejsce zerowe
a=input('Punkt pocz�towy '); %punkt pocz�tkowy 
c(1)=a; % tworzymy wektor i definiujemy punkt pocz�tkowy jako pierwsza
         %wsp�rz�dna
c(2)=c(1)-f(c(1))/pochodna(f,c(1)); %obliczenie drugiej wsp�rz�dnej wektora
 % jako miejsce przeci�cia stycznej z punktu pocz�tkowego i osi y=0
i=0; % i to ilo�� obrot�w p�tli
k=2; % k to numer wsp�rz�dnej wektora
while(abs(c(k)-c(k-1))>Eps) % sprawdzenie d�ugo�ci przedzia�u czy wi�kszy o 
                            %epsilon czyli przyj�ty b��d
c(k+1)=c(k)-f(c(k))/pochodna(f,c(k)); %obliczenie kolejnego punktu jako 
% przeci�cie stycznej z punktu poprzedniego i osi y=0
k=k+1; % dodanie jednej wsp�rz�dnej do wektora
i=i+1; % dodanie jednego obrotu do p�tli
endwhile
printf('Miejsce zerowe funkcji to: %.10f \n',c(k)) % wy�wietlenie wynik�w
printf('Warto�� funkcji w wyznaczonym miejscu zerowym to: %.10f \n',f(c(k)))   
printf('Ilo�� wykonanych obrot�w p�tli: %d \n',i)  	
endfunction
function newton(f)
printf('Podaj: \n');
Eps=input('B³¹d: '); %b³¹d z jakim szukamy miejsce zerowe
a=input('Punkt pocz¹towy '); %punkt pocz¹tkowy 
c(1)=a; % tworzymy wektor i definiujemy punkt pocz¹tkowy jako pierwsza
         %wspó³rzêdna
c(2)=c(1)-f(c(1))/pochodna(f,c(1)); %obliczenie drugiej wspó³rzêdnej wektora
 % jako miejsce przeciêcia stycznej z punktu pocz¹tkowego i osi y=0
i=0; % i to iloœæ obrotów pêtli
k=2; % k to numer wspó³rzêdnej wektora
while(abs(c(k)-c(k-1))>Eps) % sprawdzenie d³ugoœci przedzia³u czy wiêkszy o 
                            %epsilon czyli przyjêty b³¹d
c(k+1)=c(k)-f(c(k))/pochodna(f,c(k)); %obliczenie kolejnego punktu jako 
% przeciêcie stycznej z punktu poprzedniego i osi y=0
k=k+1; % dodanie jednej wspó³rzêdnej do wektora
i=i+1; % dodanie jednego obrotu do pêtli
endwhile
printf('Miejsce zerowe funkcji to: %.10f \n',c(k)) % wyœwietlenie wyników
printf('Wartoœæ funkcji w wyznaczonym miejscu zerowym to: %.10f \n',f(c(k)))   
printf('Iloœæ wykonanych obrotów pêtli: %d \n',i)  	
endfunction
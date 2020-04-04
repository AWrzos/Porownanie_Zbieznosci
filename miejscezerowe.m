%program 
format long
printf('Witamy w programie do szukania miejsca zerowego funkcji. \n');
printf('Wybierz funkcjê poprzez wpisanie odpowiedniej cyfry: \n');
printf('1 - f(x)=log10(x)-1 \n');
printf('2 - f(x)=x-x^(1/3)-0.01 \n');
printf('3 - f(x)=sin(x-3)x^2 \n');
printf('4 - f(x)=a*x^5+b*x^4+c*x^3+d*x^2+e*x+f \n');
n=input('Numer funkcji: '); % podanie cyfry 
if(n==1) % sprawdzenie jaka podana zosta³a cyfra i przypisanie odpowiedniej
  f=@(x) log10(x)-1;   %funkcji do programu
  elseif(n==2)
    f=@(x) x-x.^(1/3)-0.01;
      elseif(n==3)
        f=@(x) sin(x-3)*x.^2;
          elseif(n==4)
          printf('Podaj wspó³czynniki wielomianu \n'); 
            a1=input('a= ');
            a2=input('b= ');
            a3=input('c= ');
            a4=input('d= ');
            a5=input('e= ');
            a6=input('f= ');
            f=@(x) a1*x.^5+a2*x.^4+a3*x.^3+a4*x.^2+a5*x+a6;
          else
            printf('Podano z³¹ cyfrê \n')
endif
printf('Wybierz metodê poprzez wpisanie odpowiedniej cyfry: \n');
printf('1 - bisekcja \n');  
printf('2 - sieczna \n');
printf('3 - newton \n');
m=input('Numer metody: '); % podanie cyfry
if(m==1) %sprawdzenie wpisanej cyfry i uruchomienie odpowiedniej metody
  bisekcja(f);
  elseif(m==2)
    sieczna(f);
      elseif(m==3)
        newton(f);
      else 
        printf('Podano z³¹ cyfrê \n')
endif



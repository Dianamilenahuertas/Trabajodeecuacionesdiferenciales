%Autor: Diana Huertas Vargas
%fecha:26/08/2022
%El siguiente Codigo nos ayuda a
% 1) Solucionar Ecuaciones diferenciales homogeneas de segundo orden con coeficientes
%    Constantes
% 3) Graficas de: Posición, velocidad y aceleracion  
%%
syms x(t)% Esto es para definir una variable simbolica
%valor de los coeficientes de la ecuación diferencial 
a=25;b=0;c=7800; % Parametros un Ejemplo  del documento 
%% 
%diff(x,t,2); % Esta función me determina de manera simbolica
              % la derivada de orden 2 respecto a t
%diff(x,t)    %Derivada de orden 1

Ecu=a*diff(x,t,2)+b*diff(x,t)+c*x(t)==0%Ecuación diferencial segundo orden hogogenea  
        % con coeficientes constantes
%%
% Cuando el problema es con condiciones inciales
%dx=diff(x,t);
Cond1=[dx(0); x(0)]==[0;0.03]
x(t)=dsolve(Ecu,Cond1)%Posición
%%
%Solucion general de La ED homogena
%x(t)=dsolve(Ecu)
%%
%Frecuencia Angular

%Periodo
%%
vel=diff(x)%Velocidad
Acele=diff(x,t,2)%Aceleración

%%
 hold on
 fplot(x,[0,6])%grafica Posicion
 fplot(vel,[0,6])%grafica Velocidad
 fplot(Acele,[0,6])%Grafica de la aceleración
 hold off
 legend('Posicion', 'Velocidad', 'Acelelarción')


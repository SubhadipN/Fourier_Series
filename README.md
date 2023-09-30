# Fourier Series

## **Analysis of a simply supported beam subjected to any arbitrary general loading:**
<p align="justify"> Let a simply supported beam of length $L$ be subjected to any arbitrary general loading $w(x)$, as shown in Figure 1. The loading function $w(x)$ can be represented by the Fourier series of harmonic loading functions of periodicity equal to $2L$ as 
   $$w(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^{\infty} a_n\cos \dfrac{n\pi x}{L}+\sum\limits_{n=1}^{\infty} b_n\sin \dfrac{n\pi x}{L}$$ 
   where 
   $$a_0 = \dfrac{1}{L}\int\limits_0^{2L} w(x)\ dx$$ 
   $$a_n = \dfrac{1}{L}\int\limits_0^{2L} w(x) \cos \dfrac{n\pi x}{L} \ dx$$ 
   $$b_n = \dfrac{1}{L}\int\limits_0^{2L} w(x) \sin \dfrac{n\pi x}{L} \ dx$$ 
   If the response of the simply supported beam subjected to harmonic loadings, $\sin (n\pi x/L)$ and $\cos (n\pi x/L)$, and a uniformly distributed loading (UDL), $a_0/2$, are known individually, the total response of the beam due to $w(x)$ can be obtained by using the theory of superposition. However, the superposition can only be applied if the beam behaves linearly for the prescribed general loading. Now the vertical reaction forces at two supports, bending moment values, shear force values, deflection and slope profiles of the beam subjected to individual UDL and harmonic loadings are given in the following sections. </p>
   
  <p align="center">
    <img align="center" src="ssb_general_load.png" alt="drawing" width="500"/>
  </p>
  <p align="center"> Figure 1: A simply supported beam subjected to any general loading </p>

### 1. Analysis of the beam when subjected to a UDL: 
   Consider a beam with a UDL of intensity $w_1(x)=a_0/2$ per unit length, as shown in Figure 2. 
  <p align="center">
    <img align="center" src="ssb_udl.png" alt="drawing" width="500"/>
  </p>
  <p align="center"> Figure 2: A simply supported beam subjected to a UDL loading </p>
  
   **Support reactions:** considering the moment equilibrium condition at support $B$, 
   $$R_{A1}L=\displaystyle\int_0^{L} w_1(\xi)(L-\xi)d\xi=\dfrac{a_0}{2}\displaystyle\int_0^{L} (L-\xi)d\xi=\dfrac{a_0L^2}{4} \quad\Rightarrow R_{A1}=\dfrac{a_0L}{4}\ (\uparrow)$$
   Considering the equilibrium of vertical forces,
   $$R_{A1}+R_{B1}=\dfrac{a_0L}{2}\quad \Rightarrow R_{B1}=\dfrac{a_0L}{4}\ (\uparrow)$$

   **Bending moment:** 
   $$M_{1x}=R_{A1}x-\displaystyle\int_0^{x} w_1(\xi)(x-\xi)d\xi=\dfrac{a_0Lx}{4}-\dfrac{a_0}{2}\displaystyle\int_0^{x} (x-\xi)d\xi=\dfrac{a_0Lx}{4}-\dfrac{a_0x^2}{4}\ (\mathrm{clockwise})$$

   **Shear force:**
   $$V_{1x}=\dfrac{dM_{1x}}{dx}=\dfrac{a_0L}{4}-\dfrac{a_0x}{2}\ (\uparrow)$$

   **Deflection and slope profiles:** considering $EI$ as the *flexural rigidity* of the beam,
   $$EI\dfrac{d^2y_1}{dx^2}=M_{1x}=\dfrac{a_0Lx}{4}-\dfrac{a_0x^2}{4}$$
   $$\Rightarrow EI\dfrac{dy_1}{dx}=\dfrac{a_0Lx^2}{8}-\dfrac{a_0x^3}{12}+c_1$$
   $$\Rightarrow EIy_1=\dfrac{a_0Lx^3}{24}-\dfrac{a_0x^4}{48}+c_1x+c_2$$
   Boundary conditions for the beam can be expressed as $y_1(0)=0$ and $y_1(L)=0$, which implies that $c_1=-a_0L^3/48$ and $c_2=0$. Hence, 
   $$y_1=\dfrac{1}{EI}\left(\dfrac{a_0L^3x}{48}-\dfrac{a_0Lx^3}{24}+\dfrac{a_0x^4}{48}\right)\ (\downarrow)$$
   $$\dfrac{dy_1}{dx}=\dfrac{1}{EI}\left(\dfrac{-a_0L^3}{48}+\dfrac{a_0Lx^2}{8}-\dfrac{a_0x^3}{12}\right)\ (\mathrm{clockwise})$$
  
### 2. Analysis of the beam when subjected to a cosine harmonic loading:
   Consider a beam with a harmonic loading of intensity $w_2(x)=\cos\frac{n\pi x}{L}$ per unit length, as shown in Figure 3.
   
  <p align="center">
    <img align="center" src="ssb_cos.png" alt="drawing" width="500"/>
  </p>
  <p align="center"> Figure 3: A simply supported beam subjected to a cosine loading </p>
  
   **Support reactions:** considering the moment equilibrium condition at support $B$, 
   $$R_{A2}L=\displaystyle\int_0^{L} w_2(\xi)(L-\xi)d\xi=L\underbrace{\displaystyle\int_0^{L} \cos\dfrac{n\pi\xi}{L}\ d\xi}_{=0} -\displaystyle\int_0^{L} \xi\cos\dfrac{n\pi\xi}{L}\ d\xi =\left(\dfrac{L}{n\pi}\right)^2(1-\cos n\pi)$$
   
   $$\Rightarrow R_{A2}=\dfrac{L(1-\cos n\pi)}{(n\pi)^2}\ (\uparrow)$$
   
   Considering the equilibrium of vertical forces,
   $$R_{A2}-R_{B2}=\displaystyle\int_0^L w_2(\xi)\ d\xi= \displaystyle\int_0^L \cos\dfrac{n\pi\xi}{L}\ d\xi=0\quad \Rightarrow\ R_{B2}=\dfrac{L(1-\cos n\pi)}{(n\pi)^2}\ (\downarrow)$$

   **Bending moment:** 
   $$M_{2x}=R_{A2}x-\displaystyle\int_0^{x} w_2(\xi)(x-\xi)d\xi=\dfrac{Lx(1-\cos n\pi)}{(n\pi)^2}-x\displaystyle\int_0^x \cos\dfrac{n\pi\xi}{L}\ d\xi +\displaystyle\int_0^x \xi \cos\dfrac{n\pi\xi}{L}\ d\xi=\dfrac{L^2\left(\cos\frac{n\pi x}{L}-1\right)+Lx(1-\cos n\pi)}{(n\pi)^2}\ (\mathrm{clockwise})$$

   **Shear force:**
   $$V_{2x}=\dfrac{dM_{2x}}{dx}=\dfrac{L\left(1-\cos n\pi-n\pi\sin\frac{n\pi x}{L}\right)}{(n\pi)^2}\ (\uparrow)$$

   **Deflection and slope profiles:** 
   $$EI\dfrac{d^2y_2}{dx^2}=M_{2x}=\dfrac{L^2\left(\cos\frac{n\pi x}{L}-1\right)+Lx(1-\cos n\pi)}{(n\pi)^2}$$
   
   $$\Rightarrow EI\dfrac{dy_2}{dx}=\dfrac{L^3\sin\frac{n\pi x}{L}}{(n\pi)^3}-\dfrac{L^2x}{(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^2}{2(n\pi)^2}+c_3$$
   
   $$\Rightarrow EIy_2=-\dfrac{L^4\cos\frac{n\pi x}{L}}{(n\pi)^4}-\dfrac{L^2x^2}{2(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^3}{6(n\pi)^2}+c_3x+c_4$$
   
   Satisfying the corresponding boundary conditions for the beam, the constants of integration can be obtained as $c_3=\dfrac{L^3(2+\cos n\pi)}{6(n\pi)^2}-\dfrac{L^3(1-\cos n\pi)}{(n\pi)^4}$ and $c_4=\left(\dfrac{L}{n\pi}\right)^4$. Hence, 
   $$y_2=\dfrac{1}{EI}\left\lbrace\dfrac{L^4(\cos\frac{n\pi x}{L}-1)}{(n\pi)^4}+\dfrac{L^3(1-\cos n\pi)x}{(n\pi)^4}-\dfrac{L^3(2+\cos n\pi)x}{6(n\pi)^2}+\dfrac{L^2x^2}{2(n\pi)^2}-\dfrac{L(1-\cos n\pi)x^3}{6(n\pi)^2}\right\rbrace\ (\downarrow)$$
   $$\dfrac{dy_2}{dx}=\dfrac{1}{EI}\left\lbrace\dfrac{L^3(\cos n\pi-1)}{(n\pi)^4}+\dfrac{L^3\sin\frac{n\pi x}{L}}{(n\pi)^3}+\dfrac{L^3(2+\cos n\pi)}{6(n\pi)^2}-\dfrac{L^2x}{(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^2}{2(n\pi)^2}\right\rbrace\ (\mathrm{clockwise})$$
  
### 3. Analysis of the beam when subjected to a sine harmonic loading:
   Consider a beam with a harmonic loading of intensity $w_3(x)=\sin\frac{n\pi x}{L}$ per unit length, as shown in Figure 4.
   
  <p align="center">
    <img align="center" src="ssb_sin.png" alt="drawing" width="500"/>
  </p>
  <p align="center"> Figure 4: A simply supported beam subjected to a sine loading </p>
  
   **Support reactions:** considering the moment equilibrium condition at support $B$, 
   $$R_{A3}L=\displaystyle\int_0^{L} w_3(\xi)(L-\xi)d\xi=L\displaystyle\int_0^{L} \sin\dfrac{n\pi\xi}{L}\ d\xi -\displaystyle\int_0^{L} \xi\sin\dfrac{n\pi\xi}{L}\ d\xi = \dfrac{L^2}{n\pi}\quad\Rightarrow\ R_{A3}=\dfrac{L}{n\pi}\ (\uparrow)$$

   Considering the equilibrium of vertical forces,
   $$R_{A3}+R_{B3}=\displaystyle\int_0^L w_3(\xi)\ d\xi=\displaystyle\int_0^L \sin\dfrac{n\pi\xi}{L}\ d\xi = \dfrac{L(1-\cos n\pi)}{n\pi} \quad \Rightarrow R_{B3}=-\dfrac{L\cos n\pi}{n\pi}\ (\uparrow)$$

   **Bending moment:** 
   $$M_{3x}=R_{A3}x-\displaystyle\int_0^{x} w_3(\xi)(x-\xi)d\xi=\dfrac{Lx}{n\pi}-x\displaystyle\int_0^{x} \sin\dfrac{n\pi\xi}{L}\ d\xi +\displaystyle\int_0^{x} \xi\sin\dfrac{n\pi\xi}{L}\ d\xi=\dfrac{L^2\sin\frac{n\pi x}{L}}{(n\pi)^2}\ (\mathrm{clockwise})$$

   **Shear force:**
   $$V_{3x}=\dfrac{dM_{3x}}{dx}=\dfrac{L\cos\frac{n\pi x}{L}}{n\pi}\ (\uparrow)$$

   **Deflection and slope profiles:** 
   $$EI\dfrac{d^2y_3}{dx^2}=M_{3x}=\dfrac{L^2\sin\frac{n\pi x}{L}}{(n\pi)^2}$$
   
   $$\Rightarrow EI\dfrac{dy_3}{dx}=-\dfrac{L^3\cos\frac{n\pi x}{L}}{(n\pi)^3}+c_5$$
   
   $$\Rightarrow EIy_3=-\dfrac{L^4\sin\frac{n\pi x}{L}}{(n\pi)^4}+c_5x+c_6$$
   
   Satisfying the corresponding boundary conditions for the beam, the constants of integration can be obtained as $c_5=0$ and $c_6=0$. Hence, 
   $$y_3=\dfrac{1}{EI}\cdot\dfrac{L^4\sin\frac{n\pi x}{L}}{(n\pi)^4}\ (\downarrow)$$
   $$\dfrac{dy_3}{dx}=-\dfrac{1}{EI}\cdot\dfrac{L^3\cos\frac{n\pi x}{L}}{(n\pi)^3}\ (\mathrm{clockwise})$$

### 4. Superposition of reaction forces and responses:
<p align="justify"> The theory of superposition can be used to get the resultant reaction forces and responses of the simply supported beam due to any general loading $w(x)$. The behaviour of the beam must be within a linear range to make the theory of superposition to be applicable. The linear behaviour of the beam can be controlled by the $EI$ value for a particular prescribed loading $w(x)$. The expressions for the resultant reactions and other responses are given below. </p>

**Total reactions:**
$$\color{Greenyellow} R_A=R_{A1}+\displaystyle\sum\limits_{n=1}^{\infty}a_nR_{A2}+\sum\limits_{n=1}^{\infty}b_nR_{A3}=\dfrac{a_0L}{4}+\sum\limits_{n=1}^{\infty}\dfrac{a_nL(1-\cos n\pi)}{(n\pi)^2}+\sum\limits_{n=1}^{\infty}\dfrac{b_nL}{n\pi}\ (\uparrow)$$
$$\color{Greenyellow} R_B=R_{B1}+\displaystyle\sum\limits_{n=1}^{\infty}a_nR_{B2}+\sum\limits_{n=1}^{\infty}b_nR_{B3}=\dfrac{a_0L}{4}-\sum\limits_{n=1}^{\infty}\dfrac{a_nL(1-\cos n\pi)}{(n\pi)^2}-\sum\limits_{n=1}^{\infty}\dfrac{b_nL\cos n\pi}{n\pi}\ (\uparrow)$$

**Total bending moment:**
$$\color{Greenyellow} M_x=M_{1x}+\displaystyle\sum\limits_{n=1}^{\infty}a_nM_{2x}+\sum\limits_{n=1}^{\infty}b_nM_{3x}=\dfrac{a_0Lx}{4}-\dfrac{a_0x^2}{4}+\left(\dfrac{L}{n\pi}\right)^2\displaystyle\sum\limits_{n=1}^{\infty}\left\lbrace a_n\left(\cos\dfrac{n\pi x}{L}-1\right)+b_n \sin \dfrac{n\pi x}{L}\right\rbrace+\dfrac{Lx}{(n\pi)^2}\sum\limits_{n=1}^{\infty}a_n(1-\cos n\pi)\ (\mathrm{clockwise})$$

**Total shear force:**
$$\color{Greenyellow} V_x=V_{1x}+\displaystyle\sum\limits_{n=1}^{\infty}a_nV_{2x}+\sum\limits_{n=1}^{\infty}b_nV_{3x} = \dfrac{a_0L}{4}-\dfrac{a_0x}{2}+\dfrac{L}{(n\pi)^2}\displaystyle\sum\limits_{n=1}^{\infty}a_n(1-\cos n\pi)+\dfrac{L}{n\pi}\sum\limits_{n=1}^{\infty}\left(b_n\cos \dfrac{n\pi x}{L}-a_n\sin \dfrac{n\pi x}{L}\right)\ (\uparrow)$$

**Total deflection:**
$$\color{Greenyellow} y=y_1+\displaystyle\sum\limits_{n=1}^{\infty}a_ny_2+\sum\limits_{n=1}^{\infty}b_ny_3=\dfrac{1}{EI}\left(\dfrac{a_0L^3x}{48}-\dfrac{a_0Lx^3}{24}+\dfrac{a_0x^4}{48}\right)+\dfrac{1}{EI}\left(\dfrac{L}{n\pi}\right)^4\displaystyle\sum\limits_{n=1}^{\infty}\left\lbrace a_n\left(\cos \dfrac{n\pi x}{L}-1\right)+b_n\sin\dfrac{n\pi x}{L}\right\rbrace+\dfrac{1}{EI}\displaystyle\sum\limits_{n=1}^{\infty}a_n\left\lbrace\dfrac{L^3(1-\cos n\pi)x}{(n\pi)^4}-\dfrac{L^3(2+\cos n\pi)x}{6(n\pi)^2}+\dfrac{L^2x^2}{2(n\pi)^2}-\dfrac{L(1-\cos n\pi)x^3}{6(n\pi)^2} \right\rbrace\ (\downarrow)$$

**Total slope:**
$$\color{Greenyellow} \dfrac{dy}{dx}=\dfrac{dy_1}{dx}+\displaystyle\sum\limits_{n=1}^{\infty}a_n\dfrac{dy_2}{dx}+\sum\limits_{n=1}^{\infty}b_n\dfrac{dy_3}{dx}=\dfrac{1}{EI}\left(-\dfrac{a_0L^3}{48}+\dfrac{a_0Lx^2}{8}-\dfrac{a_0x^3}{12}\right)+\dfrac{1}{EI}\left(\dfrac{L}{n\pi}\right)^3\displaystyle\sum\limits_{n=1}^{\infty}\left( a_n\sin\dfrac{n\pi x}{L}-b_n\cos\dfrac{n\pi x}{L}\right)+\dfrac{1}{EI}\displaystyle\sum\limits_{n=1}^{\infty}a_n\left\lbrace\dfrac{L^3(\cos n\pi-1)}{(n\pi)^4}+\dfrac{L^3(2+\cos n\pi)}{6(n\pi)^2}-\dfrac{L^2x}{(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^2}{2(n\pi)^2} \right\rbrace\ (\mathrm{clockwise})$$

---
*Example:* Consider a prismatic and simply supported beam with the prescribed loading as shown in Figure 5. 

  <p align="center">
    <img align="center" src="beam_example.png" alt="drawing" width="600"/>
  </p>
  <p align="center"> Figure 5: Necessary details for an example simply supported beam </p>

<p align="justify"> A simple computer script (developed using MATLAB) is provided below to find the approximate Fourier series expansion for the given loading acting at the example beam. Also, the script can be used to generate various responses (i.e., bending moment diagram, shear force diagram and deformation profile) of the beam using the theory discussed above. The variations of the responses with respect to the length of the beam are shown in Figure 6. It is assumed that the beam behaves linearly for the prescribed loadings. The inputs of the computer script can be modified accordingly to use it for other simply supported beams due to any general loading. </p>

```MATLAB
clear all; clc; warning ('off','all');
%=============================================================================================
% INPUTS::
% Length of the beam (m)::
L = 6;       
% Modulus of rigidity of the beam (kN-m^2)::
EI = 11250;
% Position of Load Function::
LP = [0 0.3; 0.4 0.6; 0.7 1.0]*L;  
% Intensity of Load Function (kN/m)::
LI = [75 25; 10 50; 40 0];
% Number of terms in Fourier series::
n = 50;                         
%=============================================================================================
% Discrete the total length of the beam:: 
ll = -0.001*L:0.001:1.001*L;
%=============================================================================================
subplot (2,2,1); 
box on; hold on; grid minor;
xlim([min(ll) max(ll)]);
if min(LI,[],"all") >= 0
    ylim([-0.10*max(LI,[],"all") 1.25*max(LI,[],"all")]);
else
    ylim(1.25*[min(LI,[],"all") max(LI,[],"all")]);
end
frame_h = get(handle(gcf),'JavaFrame'); 
set(frame_h,'Maximized',1);
plot(ll,zeros(length(ll),1),'b','LineWidth',2); 
set(gca,'fontsize',20); 
set(gca,'FontName','Times New Roman');
xlabel('Length of beam (m)'); 
ylabel('Loading (kN)');
title('Fourier Series Expansion of the Loading');
%---------------------------------------------------------------------------------------------
elem = size(LP); elem = elem(1,1);
for ii = 1:elem
    x1 = LP(ii,1); y1 = LI(ii,1); 
    x2 = LP(ii,2); y2 = LI(ii,2);
    m(ii) = (y2-y1)/(x2-x1); 
    c(ii) = (x2*y1-x1*y2)/(x2-x1);
    l = linspace(x1,x2,1000); 
    h1 = linspace(0,y1,10); 
    h2 = linspace(0,y2,10);
    for jj = 1:length(l)
        y(jj) = m(ii)*l(jj)+c(ii);
    end
    h(1) = plot(l,y,'r','LineWidth',2);
    plot(x1*ones(length(h1),1),h1,'r','LineWidth',2);
    plot(x2*ones(length(h2),1),h2,'r','LineWidth',2); 
end  
%=============================================================================================
% Calculation of mean value::
area = 0;
for ii = 1:elem
    area = area+trapz([LP(ii,1) LP(ii,2)],[LI(ii,1) LI(ii,2)]);
end
wm = area/L; 
a0 = wm/2;
%=============================================================================================
% Estimation of Fourier Coefficients::
for ii = 1:n
    area1 = 0; area2 = 0;
    for jj = 1:elem
        x = linspace(LP(jj,1),LP(jj,2),L*1000);
        for k = 1:length(x)
            if LI(jj,1) == LI(jj,2)
                y1(k) = LI(jj,1)*cos(ii*pi*x(k)/L); 
                y2(k) = LI(jj,1)*sin(ii*pi*x(k)/L);
            else
                f = LI(jj,1)+(x(k)-LP(jj,1))*(LI(jj,2)-LI(jj,1))/(LP(jj,2)-LP(jj,1));
                y1(k) = f*cos(ii*pi*x(k)/L); 
                y2(k) = f*sin(ii*pi*x(k)/L);
            end
        end
        area1 = area1+trapz(x,y1); 
        area2 = area2+trapz(x,y2);
    end
    a(ii) = area1/L; 
    b(ii) = area2/L;
end
%=============================================================================================
% Estimation of summation of Harmonic Functions::
for ii = 1:length(ll)
    sum = -a0;
    for jj = 1:n
        sum = sum+a(jj)*cos(jj*pi*ll(ii)/L)+b(jj)*sin(jj*pi*ll(ii)/L);
    end
    wf(ii) = sum;
end
h(2) = plot(ll,wm+wf,'k','LineWidth',2);
legend(h,'Exact Loading','Fourier Series Expansion','Location','best');
%=============================================================================================
% various responses::
bm = zeros(length(ll),1);
sf = zeros(length(ll),1);
disp = zeros(length(ll),1);
Ln = L./((1:1:n)*pi);
for ii = 1:length(ll)
    bm(ii) = 0.5*a0*ll(ii)*(L-ll(ii));
    sf(ii) = a0*(L/2-ll(ii));
    disp(ii) = a0*(-L^3*ll(ii)/24+L*ll(ii)^3/12-ll(ii)^4/24);
    for jj = 1:n
        % bending moment::
        bms = Ln(jj)^2*sin(ll(ii)/Ln(jj)); 
        bmc = Ln(jj)*ll(ii)*(1-cos(jj*pi))/(jj*pi)+Ln(jj)^2*(cos(ll(ii)/Ln(jj))-1);
        bm(ii) = bm(ii)+a(jj)*bmc+b(jj)*bms;
        % shear force::
        sfs = Ln(jj)*cos(ll(ii)/Ln(jj)); 
        sfc = Ln(jj)*(1-cos(jj*pi))/(jj*pi)-Ln(jj)*sin(ll(ii)/Ln(jj));
        sf(ii) = sf(ii)+a(jj)*sfc+b(jj)*sfs;
        % deflection profile::
        disps = -Ln(jj)^4*sin(ll(ii)/Ln(jj));
        dispc = Ln(jj)^4*(1-cos(ll(ii)/Ln(jj)))-Ln(jj)^3*(1-cos(jj*pi))*ll(ii)/(jj*pi)+ ...
            L*Ln(jj)^2*(2+cos(jj*pi))*ll(ii)/6-Ln(jj)^2*ll(ii)^2/2+ ...
            Ln(jj)*(1-cos(jj*pi))*ll(ii)^3/(6*jj*pi);
        disp(ii) = disp(ii)+a(jj)*dispc+b(jj)*disps;
    end
end
disp = disp/EI;
%=============================================================================================
% Plot the bending moment::
subplot (2,2,2); 
box on; hold on; grid on; grid minor;
xlim([min(ll) max(ll)]);
ylim(1.25*[min(bm) max(bm)]);
frame_h = get(handle(gcf),'JavaFrame'); 
set(frame_h,'Maximized',1);
set(gca,'fontsize',20); 
set(gca,'FontName','Times New Roman');
plot(ll,zeros(length(ll),1),'b','LineWidth',2); 
plot(ll,bm,'g','LineWidth',2);
xlabel('Length of beam (m)'); 
ylabel('Bending Moment (kNm)'); 
title('Bending Moment Diagram');
%--------------------------------------------------------------------------------------------
% Plot the shear force:
subplot (2,2,3); 
box on; hold on; grid on; grid minor;
xlim([min(ll) max(ll)]);
ylim(1.25*[min(sf) max(sf)]);
frame_h = get(handle(gcf),'JavaFrame'); 
set(frame_h,'Maximized',1);
set(gca,'fontsize',20); 
set(gca,'FontName','Times New Roman');
plot(ll,zeros(length(ll),1),'b','LineWidth',2); 
plot(ll,sf,'g','LineWidth',2);
plot([0,0],[0,sf(1)],'g','LineWidth',2);
plot([L,L],[0,sf(end)],'g','LineWidth',2);
xlabel('Length of beam (m)'); 
ylabel('Shear Force (kN)'); 
title('Shear Force Diagram');
%--------------------------------------------------------------------------------------------
% Plot the deformed shape:
subplot (2,2,4); 
box on; hold on; grid on; grid minor;
xlim([min(ll) max(ll)]);
ylim(1.2*[1000*min(disp) 1000*max(disp)]);
frame_h = get(handle(gcf),'JavaFrame'); 
set(frame_h,'Maximized',1);
set(gca,'fontsize',20); 
set(gca,'FontName','Times New Roman');
plot(ll,zeros(length(ll),1),'b','LineWidth',2); 
plot(ll,1000*disp,'g','LineWidth',2);
xlabel('Length of beam (m)'); 
ylabel('Deflection (mm)');
title('Deformed Shape of the Beam');
%=============================================================================================
```

  <p align="center">
    <img align="center" src="ssb_example.png" alt="drawing" width="1200"/>
  </p>
  <p align="center"> Figure 6: Loading details for a simply supported beam and the corresponding responses </p>
  
## **Theory of plates (double series solution by Navier's method):** 

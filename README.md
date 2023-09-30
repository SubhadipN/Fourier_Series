# Fourier Series

## **Analysis of a simply supported beam subjected to any arbitrary general loading:**
<p align="justify"> Let a simply supported beam of length $L$ be subjected to any arbitrary general loading $w(x)$, as shown in Figure 1. The loading function $w(x)$ can be represented by the Fourier series of harmonic loading functions of periodicity equal to $2L$ as 
   $$w(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^{\infty} a_n\cos \dfrac{n\pi x}{L}+\sum\limits_{n=1}^{\infty} b_n\sin \dfrac{n\pi x}{L}$$ 
   where 
   $$a_0 = \dfrac{1}{L}\int\limits_0^{2L} w(x)\ dx$$ 
   $$a_n = \dfrac{1}{L}\int\limits_0^{2L} w(x) \cos \dfrac{n\pi x}{L} \ dx$$ 
   $$b_n = \dfrac{1}{L}\int\limits_0^{2L} w(x) \sin \dfrac{n\pi x}{L} \ dx$$ 
   If the response of the simply supported beam subjected to harmonic loadings, $\sin (n\pi x/L)$ and $\cos (n\pi x/L)$, and a uniformly distributed loading (UDL), $a_0/2$, are known individually, the total response of the beam due to $w(x)$ can be obtained by using the theory of superposition. However, the superposition can only be applied if the beam behaves linearly for the prescribed general loading. Now the reaction forces, deflection and slope profiles of the beam subjected to individual UDL and harmonic loadings are given in the following sections. </p>
   
  <p align="center">
    <img align="center" src="ssb_general_load.png" alt="drawing" width="300"/>
  </p>
  <p align="center"> Figure 1: A simply supported beam subjected to any general loading </p>

### 1. Analysis of the beam when subjected to a UDL of intensity $w_1(x)=a_0/2$ per unit length:
  <p align="center">
    <img align="center" src="ssb_udl.png" alt="drawing" width="300"/>
  </p>
  <p align="center"> Figure 2: A simply supported beam subjected to a UDL loading </p>
  
   **Support reactions:** considering the moment equilibrium condition at support $B$, 
   $$R_{A1}L=\displaystyle\int_0^{L} w_1(\xi)(L-\xi)d\xi=\dfrac{a_0}{2}\displaystyle\int_0^{L} (L-\xi)d\xi=\dfrac{a_0L^2}{4} \quad\Rightarrow R_{A1}=\dfrac{a_0L}{4}\ (\uparrow)\quad .$$
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
  
### 2. Analysis of the beam when subjected to a harmonic loading of intensity $w_2(x)=\cos n\pi x/L$ per unit length:
   
  <p align="center">
    <img align="center" src="ssb_cos.png" alt="drawing" width="300"/>
  </p>
  <p align="center"> Figure 3: A simply supported beam subjected to a cosine loading </p>
  
   **Support reactions:** considering the moment equilibrium condition at support $B$, 
   $$R_{A2}L=\displaystyle\int_0^{L} w_2(\xi)(L-\xi)d\xi=L\underbrace{\displaystyle\int_0^{L} \cos\dfrac{n\pi\xi}{L}\ d\xi}_{=0} -\displaystyle\int_0^{L} \xi\cos\dfrac{n\pi\xi}{L}\ d\xi =\left(\dfrac{L}{n\pi}\right)^2(1-\cos n\pi)$$
   
   $$\Rightarrow R_{A2}=\dfrac{L(1-\cos n\pi)}{(n\pi)^2}\ (\uparrow)$$
   
   Considering the equilibrium of vertical forces,
   $$R_{A2}-R_{B2}=\displaystyle\int_0^L w_2(\xi)\ d\xi= \displaystyle\int_0^L \cos\dfrac{n\pi\xi}{L}\ d\xi=0\quad \Rightarrow\ R_{B2}=\dfrac{L(1-\cos n\pi)}{(n\pi)^2}\ (\downarrow)$$

   **Bending moment:** 
   $$M_{2x}=R_{A2}x-\displaystyle\int_0^{x} w_2(\xi)(x-\xi)d\xi=\dfrac{Lx(1-\cos n\pi)}{(n\pi)^2}-x\displaystyle\int_0^x \cos\dfrac{n\pi\xi}{L}\ d\xi +\displaystyle\int_0^x \xi \cos\dfrac{n\pi\xi}{L}\ d\xi$$
   $$\Rightarrow M_{2x}=\dfrac{L^2\left(\cos\frac{n\pi x}{L}-1\right)+Lx(1-\cos n\pi)}{(n\pi)^2}\ (\mathrm{clockwise})$$

   **Shear force:**
   $$V_{2x}=\dfrac{dM_{2x}}{dx}=\dfrac{L\left(1-\cos n\pi-n\pi\sin\frac{n\pi x}{L}\right)}{(n\pi)^2}\ (\uparrow)$$

   **Deflection and slope profiles:** considering $EI$ as the *flexural rigidity* of the beam,
   $$EI\dfrac{d^2y_2}{dx^2}=M_{2x}=\dfrac{L^2\left(\cos\frac{n\pi x}{L}-1\right)+Lx(1-\cos n\pi)}{(n\pi)^2}$$
   
   $$\Rightarrow EI\dfrac{dy_2}{dx}=\dfrac{L^3\sin\frac{n\pi x}{L}}{(n\pi)^3}-\dfrac{L^2x}{(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^2}{2(n\pi)^2}+c_3$$
   
   $$\Rightarrow EIy_2=-\dfrac{L^4\cos\frac{n\pi x}{L}}{(n\pi)^4}-\dfrac{L^2x^2}{2(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^3}{6(n\pi)^2}+c_3x+c_4$$
   
   Satisfying the corresponding boundary conditions for the beam, the constants of integration can be obtained as $c_3=\dfrac{L^3(2+\cos n\pi)}{6(n\pi)^2}-\dfrac{L^3(1-\cos n\pi)}{(n\pi)^4}$ and $c_4=\left(\dfrac{L}{n\pi}\right)^4$. Hence, 
   $$y_2=\dfrac{1}{EI}\left\lbrace\dfrac{L^4(\cos\frac{n\pi x}{L}-1)}{(n\pi)^4}+\dfrac{L^3(1-\cos n\pi)x}{(n\pi)^4}-\dfrac{L^3(2+\cos n\pi)x}{6(n\pi)^2}+\dfrac{L^2x^2}{2(n\pi)^2}-\dfrac{L(1-\cos n\pi)x^3}{6(n\pi)^2}\right\rbrace\ (\downarrow)$$
   $$\dfrac{dy_2}{dx}=\dfrac{1}{EI}\left\lbrace\dfrac{L^3(\cos n\pi-1)}{(n\pi)^4}+\dfrac{L^3\sin\frac{n\pi x}{L}}{(n\pi)^3}+\dfrac{L^3(2+\cos n\pi)}{6(n\pi)^2}-\dfrac{L^2x}{(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^2}{2(n\pi)^2}\right\rbrace\ (\mathrm{clockwise})$$
  
### 3. Analysis of the beam when subjected to a harmonic loading of intensity $w_3(x)=\sin n\pi x/L$ per unit length:
   
  <p align="center">
    <img align="center" src="ssb_sin.png" alt="drawing" width="300"/>
  </p>
  <p align="center"> Figure 4: A simply supported beam subjected to a sine loading </p>
     
## **Theory of plates (double series solution by Navier's method):** 

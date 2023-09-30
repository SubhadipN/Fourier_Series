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

### 1. Analysis of the beam when subjected to a UDL: 
   Consider a beam with a UDL of intensity $w_1(x)=a_0/2$ per unit length, as shown in Figure 2. 
  <p align="center">
    <img align="center" src="ssb_udl.png" alt="drawing" width="300"/>
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
    <img align="center" src="ssb_cos.png" alt="drawing" width="300"/>
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
    <img align="center" src="ssb_sin.png" alt="drawing" width="300"/>
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

**Bending moment:**
$$\color{Greenyellow} M_x=M_{1x}+\displaystyle\sum\limits_{n=1}^{\infty}a_nM_{2x}+\sum\limits_{n=1}^{\infty}b_nM_{3x}=\dfrac{a_0Lx}{4}-\dfrac{a_0x^2}{4}+\left(\dfrac{L}{n\pi}\right)^2\displaystyle\sum\limits_{n=1}^{\infty}\left\lbrace a_n\left(\cos\dfrac{n\pi x}{L}-1\right)+b_n \sin \dfrac{n\pi x}{L}\right\rbrace+\dfrac{Lx}{(n\pi)^2}\sum\limits_{n=1}^{\infty}a_n(1-\cos n\pi)\ (\mathrm{clockwise})$$

**Shear force:**
$$\color{Greenyellow} V_x=V_{1x}+\displaystyle\sum\limits_{n=1}^{\infty}a_nV_{2x}+\sum\limits_{n=1}^{\infty}b_nV_{3x} = \dfrac{a_0L}{4}-\dfrac{a_0x}{2}+\dfrac{L}{(n\pi)^2}\displaystyle\sum\limits_{n=1}^{\infty}a_n(1-\cos n\pi)+\dfrac{L}{n\pi}\sum\limits_{n=1}^{\infty}\left(b_n\cos \dfrac{n\pi x}{L}-a_n\sin \dfrac{n\pi x}{L}\right)\ (\uparrow)$$

**Deflection:**
$$\color{Greenyellow} y=y_1+\displaystyle\sum\limits_{n=1}^{\infty}a_ny_2+\sum\limits_{n=1}^{\infty}b_ny_3=\dfrac{1}{EI}\left(\dfrac{a_0L^3x}{48}-\dfrac{a_0Lx^3}{24}+\dfrac{a_0x^4}{48}\right)+\dfrac{1}{EI}\left(\dfrac{L}{n\pi}\right)^4\displaystyle\sum\limits_{n=1}^{\infty}\left\lbrace a_n\left(\cos \dfrac{n\pi x}{L}-1\right)+b_n\sin\dfrac{n\pi x}{L}\right\rbrace+\dfrac{1}{EI}\displaystyle\sum\limits_{n=1}^{\infty}a_n\left\lbrace\dfrac{L^3(1-\cos n\pi)x}{(n\pi)^4}-\dfrac{L^3(2+\cos n\pi)x}{6(n\pi)^2}+\dfrac{L^2x^2}{2(n\pi)^2}-\dfrac{L(1-\cos n\pi)x^3}{6(n\pi)^2} \right\rbrace\ (\downarrow)$$

**Slope:**
$$\color{Greenyellow} \dfrac{dy}{dx}=\dfrac{dy_1}{dx}+\displaystyle\sum\limits_{n=1}^{\infty}a_n\dfrac{dy_2}{dx}+\sum\limits_{n=1}^{\infty}b_n\dfrac{dy_3}{dx}=\dfrac{1}{EI}\left(-\dfrac{a_0L^3}{48}+\dfrac{a_0Lx^2}{8}-\dfrac{a_0x^3}{12}\right)+\dfrac{1}{EI}\left(\dfrac{L}{n\pi}\right)^3\displaystyle\sum\limits_{n=1}^{\infty}\left( a_n\sin\dfrac{n\pi x}{L}-b_n\cos\dfrac{n\pi x}{L}\right)+\dfrac{1}{EI}\displaystyle\sum\limits_{n=1}^{\infty}a_n\left\lbrace\dfrac{L^3(\cos n\pi-1)}{(n\pi)^4}+\dfrac{L^3(2+\cos n\pi)}{6(n\pi)^2}-\dfrac{L^2x}{(n\pi)^2}+\dfrac{L(1-\cos n\pi)x^2}{2(n\pi)^2} \right\rbrace\ (\mathrm{clockwise})$$

## **Theory of plates (double series solution by Navier's method):** 

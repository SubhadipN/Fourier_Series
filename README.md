# Fourier Series

## Brief introduction

## Application of Fourier series in Structural Engineering

### **Analysis of a simply supported beam subjected to any arbitrary general loading:**
   Let a simply supported beam of length $L$ be subjected to any arbitrary general loading $w(x)$, as shown in Figure 1. The loading function $w(x)$ can be represented by the Fourier series of harmonic loading functions of periodicity equal to $2L$ as $$w(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^{\infty} a_n\cos \dfrac{n\pi x}{L}+\sum\limits_{n=1}^{\infty} b_n\sin \dfrac{n\pi x}{L}$$ where $$a_0 = \dfrac{1}{L}\int\limits_0^{2L} w(x)\ dx$$ $$a_n = \dfrac{1}{L}\int\limits_0^{2L} w(x) \cos \dfrac{n\pi x}{L} \ dx$$ $$b_n = \dfrac{1}{L}\int\limits_0^{2L} w(x) \sin \dfrac{n\pi x}{L} \ dx$$ If the response of the simply supported beam subjected to harmonic loadings, $\sin (n\pi x/L)$ and $\cos (n\pi x/L)$, and a uniformly distributed loading (UDL), $a_0/2$, are known individually, the total response of the beam due to $w(x)$ can be obtained by using the theory of superposition. However, the superposition can only be applied if the beam behaves linearly for the prescribed general loading. Now the reaction forces and deflection profile of the beam subjected to individual UDL and harmonic loadings are given in the following sections.
   
  <p align="center">
    <img align="center" src="ssb_general_load.png" alt="drawing" width="300"/>
  </p>
  <p align="center"> Figure 1: A simply supported beam subjected to any general loading </p>

2. **Theory of plates (double series solution by Navier's method):** 

%==================================================================================================
% MATLAB script to determine approximate deflected shape and B.M.D of a simply supported plate at 
% all edges (Navier's Method) due to uniformly distribute load
% For further details, go to the link below:
% https://github.com/SubhadipN/Fourier_Series/blob/main/README.md
%==================================================================================================
% PREPARED BY SUBHADIP NASKAR, RESEARCH SCHOLAR, IIT GUWAHATI
%==================================================================================================
clear all; clc; warning('off','all')
%==================================================================================================
a = 2; b = 2;	% Dimension of the plate (m) [a: x-direction; b: y-direction] 
po = -1000;		% Uniform pressure (kN/m^2)
Es = 2*10^8;	% Elastic modulus of steel (kN/m^2)
h = 0.05;		% Plate thickness (m)
nu = 0.30;		% Poisson's ratio
fn = 10;		% Number of terms in Fourier series:: 
sx = 0.05; 		% Meshgrid properties (small interval in x direction)
sy = 0.05;		% Meshgrid properties (small interval in x direction)
%==================================================================================================
D = Es*h^3/(12*(1-nu^2));           % Flexural Rigidity of plate
gx = 1+b/sx; gy = 1+a/sy;           % Grid numbers in x and y direction
[x,y] = meshgrid(0:sx:a,0:sy:b);
%==================================================================================================
% Determination of surface load coefficients (pmn)::
% **NOTE: the formula for pmn must be modified accordingly if any other external loading than 
% uniform pressure is acting on the simply supported plate.
pmn = zeros(fn);
for m = 1:fn
    for n = 1:fn 
        if (mod(m,2) == 1) && (mod(n,2) == 1) 
            pmn(m,n) = 16*po/(m*n*pi^2); 
        end
    end
end
%==================================================================================================
% Determination of deflection coefficients (wmn)::
wmn = zeros(fn);
for m = 1:fn 
    for n = 1:fn 
        dnm = (pi^4)*D*((m/a)^2+(n/b)^2)^2; 
        wmn(m,n) = pmn(m,n)/dnm; 
    end
end
%==================================================================================================
% Determination of deflected shape (wxy) [Unit: m]::
wxy = zeros(fn);
for i = 1:gx
    for j = 1:gy 
        s = 0;
        for m = 1:fn 
            for n = 1:fn 
                s = s+wmn(m,n)*sin(m*pi*x(i,j)/a)*sin(n*pi*y(i,j)/b); 
            end
        end
        wxy(i,j) = s;
    end
end
%==================================================================================================
% Determination of bending moments (Mx, My) [Unit: kN-m]::
for i = 1:gx
    for j = 1:gy s1 = 0; s2 = 0;
        for m = 1:fn
            for n = 1:fn
                nmn1 = pmn(m,n)*((m/a)^2+nu*(n/b)^2); 
                nmn2 = pmn(m,n)*(nu*(m/a)^2+(n/b)^2);   
                dnm = ((m/a)^2+(n/b)^2)^2;              
                s1 = s1+(nmn1/dnm)*sin(m*pi*x(i,j)/a)*sin(n*pi*y(i,j)/b);
                s2 = s2+(nmn2/dnm)*sin(m*pi*x(i,j)/a)*sin(n*pi*y(i,j)/b);
            end
        end
        Mx(i,j) = s1*pi^-2; 
        My(i,j) = s2*pi^-2;
    end
end
%==================================================================================================
figure (1)
surf(x,y,1000*wxy); 
set(gca,'FontSize',18); 
colorbar('northoutside','fontsize',18);
title('Deflected shape of simply supported plate','fontsize',18); 
xlabel('x (m)','fontsize',18); 
ylabel('y (m)','fontsize',18); 
zlabel('Deflection (mm)','fontsize',18);
figure (2)
subplot(1,2,1)
surf(x,y,Mx); 
set(gca,'FontSize',18); 
colorbar('northoutside','fontsize',18);
xlabel('x (m)','fontsize',18);
ylabel('y (m)','fontsize',18); 
zlabel('Mx (kN-m)','fontsize',18);
title('Bending moment diagram of simply supported plate','fontsize',18)
subplot(1,2,2)
surf(x,y,My); 
set(gca,'FontSize',18); 
colorbar('northoutside','fontsize',18);
title('Bending moment diagram of simply supported plate','fontsize',18)
xlabel('x (m)','fontsize',18); 
ylabel('y (m)','fontsize',18); 
zlabel('My (kN-m)','fontsize',18);
%==================================================================================================

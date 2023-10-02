%=============================================================================================
% MATLAB script file to find the approximate Fourier series expansion for any given loading 
% acting at a simply supported beam of length L, and also the B.M.D., S.F.D. and deformed 
% shape of the beam due to the loading represented by the Fourier series.
%=============================================================================================
% Prepared by SUBHADIP NASKAR, RESEARCH SCHOLAR, IIT GUWAHATI
%=============================================================================================
clear all; clc; warning ('off','all');
%=============================================================================================
% INPUTS::
% Length of the beam (m)::
L = 5;       
% Modulus of rigidity of the beam (kN-m^2)::
EI = 11250;
% Position of Load Function::
LP = [0 0.4; 0.5 1.0]*L;  
% LP = [0 0.4; 0.4 0.6; 0.6 1.0]*L;  
% Intensity of Load Function (kN/m)::
LI = [20 20; 10 40];
% LI = [0 20; 20 20; 20 0];
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
% END OF SCRIPT
%=============================================================================================
% Initial parameters
COD_in = 200;  % mg/L (Initial COD concentration)
NH4_in = 151;  % mg/L (Initial NH4+ concentration)
TN_in = 22.0;  % mg/L (Initial TN concentration)
PO4_in = 18.4; % mg/L (Initial PO4^3- concentration)

% Removal rates for each pollutant (from the article)
COD_removal_rate = 0.959; % COD removal rate
NH4_removal_rate = 0.969; % NH4+ removal rate
TN_removal_rate = 0.343;  % TN removal rate
PO4_removal_rate = 0.326; % PO4^3- removal rate

% Time parameters
dt = 0.1;  % Time step (in days)
T_max = 100; % Maximum simulation time (in days)
time = 0:dt:T_max;

% Initial concentrations
C0_COD = COD_in;
C0_NH4 = NH4_in;
C0_TN = TN_in;
C0_PO4 = PO4_in;

% Solving the differential equations using the Runge-Kutta method (RK4)
[C_COD, C_NH4, C_TN, C_PO4] = runge_kutta(C0_COD, C0_NH4, C0_TN, C0_PO4, time, ...
    COD_removal_rate, NH4_removal_rate, TN_removal_rate, PO4_removal_rate, dt);

% Plotting the results
figure;
subplot(2,2,1);
plot(time, C_COD, 'LineWidth', 2);
title('COD Concentration over Time');
xlabel('Time (days)');
ylabel('COD Concentration (mg/L)');

subplot(2,2,2);
plot(time, C_NH4, 'LineWidth', 2);
title('NH4+ Concentration over Time');
xlabel('Time (days)');
ylabel('NH4+ Concentration (mg/L)');

subplot(2,2,3);
plot(time, C_TN, 'LineWidth', 2);
title('TN Concentration over Time');
xlabel('Time (days)');
ylabel('TN Concentration (mg/L)');

subplot(2,2,4);
plot(time, C_PO4, 'LineWidth', 2);
title('PO4^3- Concentration over Time');
xlabel('Time (days)');
ylabel('PO4^3- Concentration (mg/L)');

sgtitle('Nutrient Removal Simulation using Runge-Kutta');

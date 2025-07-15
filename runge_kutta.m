function [C_COD, C_NH4, C_TN, C_PO4] = runge_kutta(C0_COD, C0_NH4, C0_TN, C0_PO4, time, k_COD, k_NH4, k_TN, k_PO4, dt)
    % Number of steps
    N = length(time);
    
    % Arrays to store results
    C_COD = zeros(N, 1);
    C_NH4 = zeros(N, 1);
    C_TN = zeros(N, 1);
    C_PO4 = zeros(N, 1);
    
    % Initial values
    C_COD(1) = C0_COD;
    C_NH4(1) = C0_NH4;
    C_TN(1) = C0_TN;
    C_PO4(1) = C0_PO4;
    
    % Runge-Kutta method for each pollutant
    for i = 2:N
        % COD
        k1_COD = -k_COD * C_COD(i-1);
        k2_COD = -k_COD * (C_COD(i-1) + 0.5 * k1_COD * dt);
        k3_COD = -k_COD * (C_COD(i-1) + 0.5 * k2_COD * dt);
        k4_COD = -k_COD * (C_COD(i-1) + k3_COD * dt);
        C_COD(i) = C_COD(i-1) + (k1_COD + 2*k2_COD + 2*k3_COD + k4_COD) / 6;
        
        % NH4+
        k1_NH4 = -k_NH4 * C_NH4(i-1);
        k2_NH4 = -k_NH4 * (C_NH4(i-1) + 0.5 * k1_NH4 * dt);
        k3_NH4 = -k_NH4 * (C_NH4(i-1) + 0.5 * k2_NH4 * dt);
        k4_NH4 = -k_NH4 * (C_NH4(i-1) + k3_NH4 * dt);
        C_NH4(i) = C_NH4(i-1) + (k1_NH4 + 2*k2_NH4 + 2*k3_NH4 + k4_NH4) / 6;
        
        % TN
        k1_TN = -k_TN * C_TN(i-1);
        k2_TN = -k_TN * (C_TN(i-1) + 0.5 * k1_TN * dt);
        k3_TN = -k_TN * (C_TN(i-1) + 0.5 * k2_TN * dt);
        k4_TN = -k_TN * (C_TN(i-1) + k3_TN * dt);
        C_TN(i) = C_TN(i-1) + (k1_TN + 2*k2_TN + 2*k3_TN + k4_TN) / 6;
        
        % PO4^3-
        k1_PO4 = -k_PO4 * C_PO4(i-1);
        k2_PO4 = -k_PO4 * (C_PO4(i-1) + 0.5 * k1_PO4 * dt);
        k3_PO4 = -k_PO4 * (C_PO4(i-1) + 0.5 * k2_PO4 * dt);
        k4_PO4 = -k_PO4 * (C_PO4(i-1) + k3_PO4 * dt);
        C_PO4(i) = C_PO4(i-1) + (k1_PO4 + 2*k2_PO4 + 2*k3_PO4 + k4_PO4) / 6;
    end
end

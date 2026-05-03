N = 512;
M = 1;
A = 10000;

k0 = 50;   % first positive-frequency bin. Adjust this to match your spectrum.

RealTable = zeros(N,1);
ImTable = zeros(N,1);

for m = 0:M-1
    k = k0 + m;

    phi = pi*m^2/M;   % Newman phase

    % Positive-frequency bin
    RealTable(k+1) = A*cos(phi);
    ImTable(k+1) = A*sin(phi);

    % Mirror bin for real output
    RealTable(N-k+1) = A*cos(phi);
    ImTable(N-k+1) = -A*sin(phi);
end

fprintf('Real table:\n[');
fprintf('%.0f;', RealTable(1:end-1));
fprintf('%.0f]\n\n', RealTable(end));

fprintf('Imag table:\n[');
fprintf('%.0f;', ImTable(1:end-1));
fprintf('%.0f]\n', ImTable(end));
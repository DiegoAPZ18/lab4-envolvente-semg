% 1. Leer todo el texto del archivo semg.h
texto = fileread('semg.h');

% 2. Extraer solo lo que está entre las llaves { ... } del arreglo
bloque = regexp(texto, '\{([^}]+)\}', 'tokens');
contenido_llaves = bloque{1}{1};

% 3. Extraer todos los números enteros de esa lista
muestras_str = regexp(contenido_llaves, '\d+', 'match');
muestras_dac = str2double(muestras_str(:)); % Vector columna (0 a 255)

% 4. Parámetros del DAC del ESP32
fs = 2048;                        % Frecuencia de muestreo (Hz)
N = length(muestras_dac);         % Cantidad total de muestras
t = (0 : N-1)' / fs;              % Vector de tiempo (0 a ~15 s)
voltaje = muestras_dac * (3.3 / 255); % Conversión a voltios (0 a 3.3 V)

% 5. Guardar el archivo con el formato para Proteus
fid = fopen('semg_proteus.txt', 'w');
fprintf(fid, '%.6f\t%.4f\r\n', [t, voltaje]');
fclose(fid);

disp(['Archivo generado con exito. Total de muestras: ', num2str(N)]);
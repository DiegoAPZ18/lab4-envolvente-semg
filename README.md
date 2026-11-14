# Lab 4: Extracción de la envolvente de la sEMG simulada

Universidad Nacional Mayor de San Marcos, Facultad de Ingeniería Electrónica y Eléctrica
Escuela Profesional de Ingeniería Biomédica, Instrumentación Biomédica I
Docente: Maria Elisia Armas Alvarado | Grupo: Sábado 12-2 pm

## Integrantes
- Torres Lazaro, Gianpiere Adrian (24190112)
- Pillaca Zarate, Diego Amilcar (24190108)
- Inca Fuentes, Leonardo Daniel (24190103)
- Navarro Flores Marco Antonio (24190295)

## Descripción
Circuito que obtiene la envolvente de una sEMG simulada (ESP32 + DAC) con un rectificador de precisión de media onda (TL084 + 1N4148), un seguidor y un filtro RC pasa-bajos (f_c ≈ 1,59 Hz), con y sin acoplo de continua (100 nF y 1 MΩ).

## Archivos
| Archivo | Descripción | Plataforma |
|---|---|---|
| `lab4_semg.ino` | Firmware: reproduce la sEMG por el DAC (GPIO25) a ≈ 2048 Hz | ESP32 / Arduino |
| `semg.h` | Arreglo con las 30 720 muestras de la señal (15 s). Debe estar junto al `.ino` | ESP32 / Arduino |
| `emg_proteus.m` | Genera las dos columnas de datos (tiempo, tensión) para Proteus | MATLAB |
| `semg_proteus.txt` | Datos de entrada del generador de Proteus (salida de `emg_proteus.m`) | Proteus 8 |
| `circuito_proteus_lab4.zip` | Proyecto del circuito simulado | Proteus 8 |

## Cómo reproducir
**Firmware:** abrir `lab4_semg.ino` en el Arduino IDE (con `semg.h` en la misma carpeta), seleccionar la placa ESP32 y cargarlo. La señal sale por GPIO25.

**Simulación:**
1. (Opcional) Ejecutar `emg_proteus.m` para regenerar `semg_proteus.txt`.
2. Descomprimir `circuito_proteus_lab4.zip` y abrir el proyecto en Proteus 8.
3. En el generador, cargar el archivo con la opción *File*, y observar los resultados con *Graph Mode → Analogue*.

## Fotos y videos
- https://drive.google.com/drive/folders/1WtcOVbQULOF7uPxVNNUugPLDtEjg0aos

## Datos originales
Registros de sEMG del dataset GRABMyo (Jiang et al., PhysioNet, 2024). DOI: 10.13026/89dm-f662. No se redistribuye el dataset original.

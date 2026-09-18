# ALU_SIMPLE en VHDL

## Descripción

Este proyecto implementa un módulo denominado `ALU_SIMPLE` en VHDL, capaz de realizar cuatro operaciones sobre dos buses de entrada de 8 bits. La operación ejecutada se selecciona mediante la entrada `SEL` de 2 bits.

## Entradas y salida

- A: STD_LOGIC_VECTOR(7 downto 0)
- B: STD_LOGIC_VECTOR(7 downto 0)
- SEL: STD_LOGIC_VECTOR(1 downto 0)
- RESULT: STD_LOGIC_VECTOR(7 downto 0)

## Operaciones

| SEL | Operación |
|-----|-----------|
| 00 | A AND B |
| 01 | A OR B |
| 10 | A + B |
| 11 | Concatenación de los 4 bits bajos de A y B |

## Archivos

- `alu_simple.vhd`: código principal del módulo.
- `tb_alu_simple.vhd`: banco de pruebas utilizado para la simulación.

## Simulación

Para la prueba se utilizaron:

- A = 00001111
- B = 00110011

Resultados obtenidos:

- SEL = 00 → RESULT = 00000011
- SEL = 01 → RESULT = 00111111
- SEL = 10 → RESULT = 01000010
- SEL = 11 → RESULT = 11110011

La simulación se realizó con GHDL y se visualizó mediante Surfer, verificándose el funcionamiento correcto de las cuatro operaciones.

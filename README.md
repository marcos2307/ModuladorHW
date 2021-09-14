# ModuladorHW (general)
Modulador en HW para una fase del filtro multinivel

inputs: 

-moduladora:8 bit signed

-reset: bit

outputs:

-disparos para 3 puentes H: 3x2 bits

# ModuladorTrifasico (para este caso particular)

-Utiliza 3 ModuladorHW para las 3 fases. 

-Incluye un divisor de frecuencia para obtener una señal de conmutacion de 24.41kHz.

-Implementa un conversor de 3 a 8 bits para trabajar con solo 7 niveles.

inputs: 

-3xmoduladora:3 bit signed

-reset: bit

outputs:

-disparos para 9 puentes H: 9x2 bits

Se utiliza la placa NEXYS 4 DDR.

Ver el archivo ModuladorHW\ModuladorTrifasico\MapPins.ucf para la asignación de pines.

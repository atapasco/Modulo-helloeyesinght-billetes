# Modulo-helloeyesinght-billetes
Este es el módulo del aplicativo que actualmente está en desarrollo y se centra en brindar ayuda a personas con discapacidad visual. Este módulo específico se enfoca en la capacidad de reconocimiento de billetes, y hasta el momento solo es capaz de reconocer billetes colombianos.

# que archivos contiene
El módulo contiene dos archivos en los cuales se programaron dos Inteligencias Artificiales (IA) para probar la efectividad de cada una, ambas desarrolladas en Matlab. Una de ellas es una Red Neuronal Convolucional creada desde cero, la cual clasificará cada billete según un conjunto de datos recolectados. Es importante señalar que esta red, creada desde cero, mostró un porcentaje de acierto bajo, aproximadamente entre el 60% y 70%.

La otra red neuronal utilizada es una red preentrenada de Google. Se procedió a reentrenarla y eliminar el resto de objetos que clasificaba originalmente. Esta red logró un porcentaje de acierto del 98%. Sin embargo, es necesario agregar un algoritmo o IA adicional que acerque la foto al objeto de interés (billete). Esto se debe a que, a cierta distancia, la red deja de reconocer el billete, disminuyendo su precisión.

Esperamos mejorar esta limitación implementando un algoritmo que permita acercar la imagen al objeto deseado y así optimizar el rendimiento general del sistema.

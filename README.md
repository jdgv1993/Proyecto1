# Proyecto1
Proyecto1
![Alt text](waspmote.png?raw=true)    

A continuación se comenta paso a paso como se ha llevado a cabo la implementación del programa que tiene como objetivo el desarrollo del proyecto asignado. En primer lugar, se comienza el programa incluyendo las librearías necesarias, en este caso sólo es necesaria la librería llamada “WaspSensorAgr_v30”, ya que es la que corresponde a la placa AgricultureV30, con la que se están realizando los distintos ensayos.

En segundo lugar, inicializamos las variables y objetos con los que se va a trabajar en la lectura del sensor, la variable a definir para las medidas del sensor es “watermark1” es de tipo float, ya que los valores que toma el sensor son de tipo decimal.
 
A continuación, en el “void setup” del programa se enciende la comunicación USB y se manda un mensaje por pantalla indicando que queda iniciado el programa. Seguidamente, se enciende la placa, una vez hecho lo anterior, el dispositivo está preparado para la realización de los ensayos pertinentes.
 
Una vez está lista la comunicación, se realiza la implementación del programa mediante el cual se puede llevar a cabo el proyecto en el “void loop”. Para ello, en primer lugar, se determina que el sensor está apago al inicio, iniciamos la lectura, indicando previamente por pantalla que se va a proceder, mediante un mensaje que dice: “Esperando lectura…”. Una vez se inicia la lectura del sensor, se muestra por panta el valor correspondiente de la frecuencia medida en Hz. El sensor sigue tomando medidas de ésta todo el tiempo, y para saber si es necesario regar o no, se programa la siguiente condición, si la medida proporcionada por el sensor es menor de 4500 Hz, esto quiere decir que el medio en el que se está midiendo está seco, y al tratarse de un cultivo, requeriría ser regado, en caso contrario el led se enciende de forma intermitente no siendo necesario regar, ya que la medida indicaría que hay suficiente agua. 

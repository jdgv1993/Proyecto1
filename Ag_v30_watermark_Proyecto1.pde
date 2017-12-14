// Libreria de la placa AgricultureV30
#include <WaspSensorAgr_v30.h>


// Variable para guardar la medida del sensor
float watermark1;
//Definición de objetos
watermarkClass wmSensor1(SOCKET_1);


void setup()
{
  // Encendemos la comunicación USB y ponemos un mensaje de inicio de programa
  USB.ON();
  USB.println(F("Inicio de programa"));
  
  // Encendemos la placa de agricultura
  Agriculture.ON(); 
}
 
void loop()
{
  // El sensor está apagado al inicio
  PWR.setSensorPower(SENS_3V3,SENS_OFF);
  // Lectura de la sonda
  USB.println(F("Esperando lectura..."));
  watermark1 = wmSensor1.readWatermark();      
    
  // Imprimimos por pantalla la medida
  USB.print(F("Lectura - Frecuencia: "));
  USB.print(watermark1);
  USB.println(F(" Hz"));

  USB.println();

  // Condición de encendido del led
  if (watermark1<3000){
      PWR.setSensorPower(SENS_3V3,SENS_ON); // El sensor se enciende cuando mide menos de 5500 Hz
      delay(5000);   
      
   }
  
  delay(1000);
}

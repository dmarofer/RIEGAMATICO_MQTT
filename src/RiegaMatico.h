#include <Arduino.h>
#include <Configuracion.h>
#include <ArduinoJson.h>				// OJO: Tener instalada una version NO BETA (a dia de hoy la estable es la 5.13.4). Alguna pata han metido en la 6
#include <SPIFFS.h>						// Libreria para sistema de ficheros SPIFFS
#include <WiFi.h>						// Para las comunicaciones WIFI del ESP32
#include <NTPClient.h>					// Para la gestion de la hora por NTP

class RiegaMatico {



private:

	// Variables Privadas
	unsigned long t_uptime;						// Para el tiempo que llevamos en marcha
	bool HayQueSalvar = false;					// Flag para saber si hay algo que salvar en la config.
	bool b_activa = false;						// Flag para saber si estamos regando (bomba activa)
	String mificheroconfig;						// Para almacenar el nombre del fichero de configuracion. Nos la pasa el constructor.
	unsigned long t_ciclo_global = 20;			// Tiempo de riego de cada parcial (seg).
	unsigned long t_espera_parciales = 60;		// Tiempo de espera entre parciales (seg).
	unsigned long t_init_riego;					// Para almacenar el millis del inicio del riego.
	unsigned int t_n_parciales = 6;				// Numero total de parciales del riego
	unsigned int t_n_parciales_count = 0;		// Para la cuenta de cuantos parciales me quedan.
	float t_vbateria;							// Tension en la bateria.
	float t_vcargador;							// Tension en el cargador.
	unsigned long tvbat_low;					// Para almacenar el tiempo que llevamos en bateria de emergencia
	unsigned long tstart_carga;					// Para almacenar el millis del tiempo en el que arranca la carga
	unsigned long tstop_carga;					// Para almacenar el millis del tiempo que para la carga
	boolean t_nivel;							// Estado de la reserva de agua.
	boolean cargando = false;					// Flag para saber si esta cargando

	unsigned int t_flujotick = 0;				// Contador para el medidor de flujo
	unsigned long tflujo_agua_previo = 0;		// para almacenar el millis de la ultima medicion para calcular el flujo
	unsigned long millis_previo = 0;			// para almacenar el millis de la ultima medicion para calcular el flujo
	unsigned int t_flujotick_previo = 0;		// La ultima medicion de flujo correspondiente a ese tiempo
	unsigned int flujoactual = 0;			    // Para almacenar el calculo del flujo instantaneo

	bool ARegar = false;						// Flag para saber si hay que regar (comando de ciclo de riego disparado)

	boolean riegoerror;							// Estado de error del riego (false - sin error : true - error)
	String horaultimoriego = "NA";				// Fecha y hora del ultimo riego
    unsigned int fuerzabomba = 240;				// PWM de la bomba
	float TempTierra1;							// Temperatura Tierra 1
	float TempTierra2;							// Temperatura Tierra 2
    	
	// Funciones Privadas
	typedef void(*RespondeComandoCallback)(String comando, String respuesta);			// Definir como ha de ser la funcion de Callback (que le tengo que pasar y que devuelve)
	RespondeComandoCallback MiRespondeComandos = nullptr;								// Definir el objeto que va a contener la funcion que vendra de fuera AQUI en la clase.

	static void IRAM_ATTR ISRFlujoTick();		// ISR estatica para pasarle al attachinterrupt
	static RiegaMatico* sRiegaMatico;			// Una objeto para albergar puntero a la instancia del riegamatico y manipularla desde dentro desde la interrupcion

	void RiegoRun();							// El algoritmo que controla el ciclo de riego y la bomba

	void LeeAmbiente();							// Funcion de lactura del DHT11

	void LeeTempTierra();						// Lectura de los DS18B20 del bus OneWire

	// Para almacenar Alias (referencia) al objeto tipo NTPClient para poder usar en la clase el que viene del Main
    NTPClient &ClienteNTP;
    
    

public:

	enum SleepModes {

		SleepModeApagado = 1,
		//SleepModeDormido = 2,
		//SleepModeActivo = 3

	};

	// Constructor
	RiegaMatico(String fich_config_RiegaMatico, NTPClient& ClienteNTP);	// Constructor. Se le pasa el nombre de fichero de config y una referencia a algunos objetos
	~RiegaMatico() {};												    // Destructor (Destruye el objeto, o sea, lo borra de la memoria)

	//  Variables Publicas
	String HardwareInfo;											// Identificador del HardWare y Software
	bool ComOK;														// Si la wifi y la conexion MQTT esta OK
	int reconexioneswifi;                                           // Para contar las reconexiones que ha habido a la wifi.

	// Funciones Publicas
	String MiEstadoJson(int categoria);								// Devuelve un JSON con los estados en un array de 200 chars (la libreria MQTT no puede con mas de 100)
	
	void Run();														// Metodo RUN de la clase ejecutado por la Task correspondiente
	void RunFast();

	void SetRespondeComandoCallback(RespondeComandoCallback ref);	// Funciona de callback de respondecomandos
	
	boolean LeeConfig();											// Leer la configuracion del fichero de config
	boolean SalvaConfig();											// Salvar la configuracion del fichero de config
	
	void Regar();													// Metodo para iniciar un ciclo de riego
	void Cancelar();												// Metodo para cancelar el riego en curso

	bool EstaRegando();												// Para saber si estamos regando (si estamos en ciclo)
	
	void ConfigTiempoRiego(unsigned long tiempo_riego);				// Metodo para configurar el tiempo de riego
	void ConfigEsperaParciales(unsigned long tiempo_espera);		// Metodo para configurar el tiempo de espera de los parciales
	void ConfigNumParciales(int n_parciales);						// Metodo para configurar el numero de parciales. 
	void ConfigPWMBomba(int n_fuerzabomba);							// Metodo para configurar el numero de parciales. 
	void MandaConfig();												// Metodo para enviar los parametros de configuracion a los stat
	
	void GestionCarga(boolean fuerzacarga);							// Algoritmo que gestiona la carga de la bateria. Parametro para disparar la carga (1)

	void FujoTick();												// Funcion publica normal de la clase para el medidor de flujo	

	void CalculaFlujo();											// Para calcular el flujo en ml por segundo

	void Adormir(SleepModes modo);									// Funcion para el modo Sleep

	void Begin();													// Para inicializar ciertas cosas que dan guerra. Cosas que no dependan del main, solo internas (por ejemplo nada de comunicaciones ni serialprint aqui)

};
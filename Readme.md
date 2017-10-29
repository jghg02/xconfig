# .XCONFIG FIle

Este archivo se usa para especificar diferentes tipos de configuración dentro de un proyecto. Como por ejemplo la configuración de la **URL** para los ambientes de **Desarrollo** y **Producción**

Para poder usarlos es necesario:

##1. Configurar el proyecto.

Lo primero es crear las configuraciones necesarias. Para esto vamos a la seccion de **configurations** dentro del proyecto 

<img width="1400" alt="screen shot 2017-10-29 at 6 45 04 pm" src="https://user-images.githubusercontent.com/1470487/32148690-8a8eb6ba-bcd9-11e7-87ac-7ee133d8ec63.png">

<img width="873" alt="screen shot 2017-10-29 at 6 47 33 pm" src="https://user-images.githubusercontent.com/1470487/32148700-aa4cda36-bcd9-11e7-86b2-e7f1bd8a6d96.png">

Se puede crear tantas configuraciones querramos. En este caso usare las que ya estan por defeto **Debug** y **Release**.

##2. Crear el archivo .xconfig 

Se crea un archivo de configuración nuevo. 

<img width="729" alt="screen shot 2017-10-29 at 6 49 03 pm" src="https://user-images.githubusercontent.com/1470487/32148734-f28243b8-bcd9-11e7-8ec0-9ab61dfd2fc5.png">

En el vamos a especificar ciertas valores de configuración que van a depender del ambiente en el que estemos. Este se usaria para **Debug**

	PRODUCT_NAME = TestCinfig App
	IS_APP_VERSION = 0.1
	PRODUCT_BUNDLE_IDENTIFIER = com.jghg02.ConfigTutorial.Local
	BACKEND_URL = http:\/\/localhost:8080
	
	
Y este para **Release**

	PRODUCT_NAME = TestCinfig App PRD
	IS_APP_VERSION = 0.1
	PRODUCT_BUNDLE_IDENTIFIER = com.jghg02.ConfigTutorial.Production
	BACKEND_URL = http:\/\/jghg02.com
	
##3. Definimos para cada tipo de configuración el archivo .xconfig que corresponda. 

Para esto vamos nuevamente a la pantalla donde creamos las configuraciones y en cada una de ellas **Debug** y **Release** le asigamos el archivo correspondiente. 

<img width="1143" alt="screen shot 2017-10-29 at 6 55 10 pm" src="https://user-images.githubusercontent.com/1470487/32148828-b9a829d0-bcda-11e7-8dcb-d24f6f0c7199.png">

<img width="1138" alt="screen shot 2017-10-29 at 6 55 59 pm" src="https://user-images.githubusercontent.com/1470487/32148839-d6e8d756-bcda-11e7-8c38-d6ca96923106.png">

##4. Asigamos el valor del archivo de configuración a nuestro proyecto. 

Para esto es necesario ir al archivo **info.plist** y crear una *row* en donde especifiquemos por ejemplo la URL del Backend (**BACKEND_URL**)

<img width="1145" alt="screen shot 2017-10-29 at 6 58 20 pm" src="https://user-images.githubusercontent.com/1470487/32148870-2a2951f2-bcdb-11e7-8014-69a94821c7ac.png">

En este archivo colocaremos en el Key el valor con el cual vamos a referencia el valor de dicha **URL** y el Value colocaremos el link al archivo **.xconfig** que hemos creado, en nuestro caso seria **$(BACKEND_URL)**

##5. Leer el valor correspondiente

Para poder leer este valor es necesario crea una funcion que lea el archivo **info.plist** pasadole como parametro el **Key** y como return obtener el **Value** correspondiente. 

	//Method to get the value from .plist file
    //The result dependes of wich scheme you selected (Release|Debug)
    func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            .replacingOccurrences(of: "\\", with: "")
    }
    
##6. Especificar el Schema

Para poder utilizar una u otra configuración es necesario especificar el esquema que queremos ejecutar al momento de darle **Run** a nuestra aplicación. Para esto antes de ejecutarla vamos a **Edit Schema** y seleccionamos el que queremos usar. 

<img width="442" alt="screen shot 2017-10-29 at 7 04 38 pm" src="https://user-images.githubusercontent.com/1470487/32148923-17d202a0-bcdc-11e7-9e02-c663569157aa.png">

<img width="898" alt="screen shot 2017-10-29 at 7 04 52 pm" src="https://user-images.githubusercontent.com/1470487/32148924-17f3c9a8-bcdc-11e7-92db-61d615ff292b.png">

## Resultados. 

Seleccionando el **schema** **Debug** 

<img width="591" alt="screen shot 2017-10-29 at 7 08 05 pm" src="https://user-images.githubusercontent.com/1470487/32148955-895dc40e-bcdc-11e7-9b69-56cea232d2d1.png">

Seleccionando el **schema** **Release** 

<img width="594" alt="screen shot 2017-10-29 at 7 08 45 pm" src="https://user-images.githubusercontent.com/1470487/32148960-9d74b114-bcdc-11e7-9a5c-c5e7fa68ed57.png">

###### Josue H.


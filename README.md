# flavors_project
info:  
https://docs.flutter.dev/deployment/flavors  
https://www.youtube.com/watch?v=Vhm1Cv2uPko

intrucciones:  
-sólo copiar y pegar los archivos como se va indicando.  
-cambiando los nombres de los flavors según se necesite o no.

## crear las variables de entorno
1- instalar el paquete 'flutter_dotenv'  
2- en la raiz del proyecto crear la carpeta 'env' con sus respectivos archivos .env  
    en los archivos .env se debe agregar la informacion correspondiente a cada flavor (enpoints, keys, etc)  
    para saber mas ver la documentacion del paquete (https://pub.dev/packages/flutter_dotenv)  
3- habilitar la carpeta 'env' en el archivo 'pubspec.yaml'

## configuración inicial
1- en /lib crear el archivo 'main_common.dart'  
2- en /lib/flavors crear los archivos main: 'main_development.dart', 'main_production.dart' y 'main_staging.dart'  
3- crear un folder .vscode en la raiz del proyecto + el archivo launch.json  
4- en "android\app\build.gradle":  
    agregar el bloque de código destacaddo "FLAVORS CONFIGURATIONS" (línea 65)  
    cambiar línea 48 por: -applicationId "com.example.listsync"-  
        para tener en cuenta, ahora con esta config el 'applicationId' va a ser:  
            para production mode  : "com.example.flavors_project"  
            para staging mode     : "com.example.flavors_project.stg"  
            para development mode : "com.example.flavors_project.dev"

### sólo para Android
5- en 'android\app\src\main\AndroidManifest.xml', cambiar en línea 3 por esto -> android:label="@string/app_name"  

### sólo para iOS (sólo se puede hacer en una mac con xcode)
6- ver tutorial desde aquí: https://youtu.be/Vhm1Cv2uPko?t=217  

## configurar el cliente htttp o dio
en /lib/network/http_client.dart ver un ejemplo de como hacerlo  

## cambiar de flavor
en la pestaña "run and debug" de VS code (ctrl+shift+D) en la parte superior aparecerá un menú desplegable con los nombres de los flavors,  
simplemente elegir para pasar de un flavor a otro (cerrar la app antes de cambiar).

## agregar iconos diferenciados
1- crear una carpeta assets/icons en la raiz del proyecto  
2- agregar los iconos allí en 1024x1024px (no deben tener alpha)  
3- agregar el paquete https://pub.dev/packages/flutter_launcher_icons  
(ver la doc del paquete por si ha cambia a partir de aquí)  
4- en la raíz del proyecto agregar los archivos de configuracion:  
    "flutter_launcher_icons-development.yaml"  
    "flutter_launcher_icons-production.yaml"  
    "flutter_launcher_icons-staging.yaml"

### generar los iconos para android
5- correr el comando:  
    flutter pub get  
    flutter pub run flutter_launcher_icons -f flutter_launcher_icons*  

### generar los iconos para iOS (sólo se puede hacer en una mac con xcode)
6- ver tutorial desde aquí: https://youtu.be/Vhm1Cv2uPko?t=410

## agregar splash screen diferenciadas
hacerlo con este paquete "flutter_native_splash" y ver documentación

## Firebase setup
1- https://www.youtube.com/watch?v=Vhm1Cv2uPko

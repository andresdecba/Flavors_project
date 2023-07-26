# flavors_project
info:
https://docs.flutter.dev/deployment/flavors
https://www.youtube.com/watch?v=Vhm1Cv2uPko

intrucciones:
-sólo copiar y pegar los archivos como se va indicando.
-cambiando los nombres de los flavors según se necesite o no.

## configuración inicial
1- en /lib crear un nuevo archivo 'main_common.dart'
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
1- hacerlo con este paquete "flutter_native_splash" y ver documentación

## apuntar a los endpoints del backend según cada hambiente
1- en /lib/flavors crear el archivo flavor_config.dart
2- crear la carpeta lib/network y el archivo http_client.dart
3- configurar aquí el cliente http (suguiero dio + pretty_dio)
4- va a recibir los valores que mandemos desde 'main_development.dart', 'main_production.dart' y 'main_staging.dart' -> apiUrl
5- inicializar el cliente http en 'main_common.dart' antes de lanzar la app

## Firebase setup
1- https://www.youtube.com/watch?v=Vhm1Cv2uPko
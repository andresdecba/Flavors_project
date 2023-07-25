## flavors_project
tutorial: https://www.youtube.com/watch?v=Vhm1Cv2uPko

## configuración inicial
1- crear un nuevo archivo 'app.dart'
2- crear los archivos main: 'main_development.dart', 'main_production.dart' y 'main_staging.dart'
3- crear un folder .vscode en la raiz del proyecto
4- crear el archivo launch.json en el folder anterior (.vscode)
5- en "android\app\build.gradle" agregar la configuración mostrada (línea 66)
   ahora nuestro applicationId (línea 48) va a ser:
    para production mode  : "com.example.flavors_project"
    para staging mode     : "com.example.flavors_project.stg"
    para development mode : "com.example.flavors_project.dev"

# sólo para Android
6- en 'android\app\src\main\AndroidManifest.xml', cambiar en línea 3 por esto -> android:label="@string/app_name"

# sólo para iOS (sólo se puede hacer en una mac con xcode)
7- ver tutorial dede aquí: https://youtu.be/Vhm1Cv2uPko?t=217

## agregar iconos diferenciados
1- crear una carpeta assets/icons en la raiz del proyecto
2- agregar los iconos allí en 1024x1024px (no deben tener alpha)
3- agregar el paquete https://pub.dev/packages/flutter_launcher_icons
(ver la doc del paquete por si ha cambia a partir de aquí)
4- en la raíz del proyecto agregar los archivos de configuracion:
    "flutter_launcher_icons-development.yaml"
    "flutter_launcher_icons-production.yaml"
    "flutter_launcher_icons-staging.yaml"
# generar los iconos para android
5- correr el comando:
    flutter pub get
    flutter pub run flutter_launcher_icons -f flutter_launcher_icons*
# generar los iconos para iOS (sólo se puede hacer en una mac con xcode)
6- ver tutorial desde aquí: https://youtu.be/Vhm1Cv2uPko?t=410

## agregar splash screen diferenciadas
1- hacerlo con este paquete "flutter_native_splash"

## Firebase setup
1- https://www.youtube.com/watch?v=Vhm1Cv2uPko
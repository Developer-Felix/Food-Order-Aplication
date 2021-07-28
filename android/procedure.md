31

I have changed it in the following steps:

1) please add this dependency on your pubspec.yaml page

 dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_launcher_icons: ^0.7.4
2) you have to upload an image/icon on your project which you want to see as a launcher icon. (i have created a folder name:image in my project then upload the logo.png in the image folder). Now you have to add the below codes and paste your image path on image_path: in pubspec.yaml page.

flutter_icons:
  image_path: "images/logo.png"
  android: true
  ios: true
3) Go to terminal and execute this command:

flutter pub get
4) After executing the command then enter below command:

flutter pub run flutter_launcher_icons:main
5) Done

N.B: (of course add an updated dependency from

https://pub.dev/packages/flutter_launcher_icons#-installing-tab-

)




1. Setup the config file
Add your Flutter Launcher name configuration to your pubspec.yaml. An example is shown below.

dev_dependencies: 
  flutter_launcher_name: "^0.0.1"
  
flutter_launcher_name:
  name: "yourNewAppLauncherName"

2. Run the package
After setting up the configuration, all that is left to do is run the package.

flutter pub get
flutter pub run flutter_launcher_name:main
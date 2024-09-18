# multi_model_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


activating melos

dart pub global activate melos
flutter pub global activate melos
flutter pub add melos --dev

create melos.yaml file

----------------------------------------------------------------------------------------------------

https://github.com/invertase/melos/issues/541

Git Bash on Windows (fails)

AzureAD+User@computer MINGW64 ~
$ melos
bash: melos: command not found
PowerShell (works)

melos --version
3.1.0

(Get-Command melos).Path
C:\Users\AlexanderBarker\AppData\Local\Pub\Cache\bin\melos.bat
I checked the the path in Git Bash and the correct location of the bat file is defined as expected:

echo $PATH
...
/c/Users/AlexanderBarker/AppData/Local/Pub/Cache/bin
...

-----------------------------------------------------------------------------------------------------

create plugin 

flutter create --org com.example --template=plugin --platforms=android,ios,linux,macos,windows package_name

flutter create --org com.belkhede.amarkumar.customdropdown --template=package custom_dropdown



==============================================================================================

melos.bat exec

melos.bat run test:selective_unit_test


===========================================================================================
https://stackoverflow.com/questions/35534766/how-to-create-submodule-in-existing-repo

You simply need to be in your root folder and then add the submodule folder.

git submodule add <url>
Now when you clone the project you simply need to init and update the submodule

git submodule init
git submodule update
Git 1.8.2 features a new option --remote

git submodule update --remote --merge

======================================================================================
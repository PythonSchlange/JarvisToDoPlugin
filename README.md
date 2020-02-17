<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Todo-Listenmanager, kompatibel mit dem Todo.txt-Format (http://todotxt.com/). Dies ist ein sehr einfaches, leichtes Format, das es erlaubt
- gerade Textbearbeitung
- Befehlszeilenclient (Todo.txt CLI)
- Synchronisation mit
   - Thunderbird (https://addons.mozilla.org/fr/thunderbird/addon/todotxt-extension/)
   - Android (https://play.google.com/store/apps/details?id=com.todotxt.todotxttouch)
   - iOS-Geräte (https://itunes.apple.com/us/app/todo.txt-touch/id491342186?ls=1&mt=8)

Dieses Plugin wurde von "Pense-bête" (http://domotiquefacile.fr/jarvis/plugins/pense-bête) inspiriert,
das über eine einfache Aufgabenverwaltung verfügt, jedoch keinem Standard für die Datendatei folgt

Deutsche Übersetzung von Python Schlange.
## Usage
```
Ich: Erinnere mich daran Milch zu kaufen
Jarvis: "Milch kaufen" zur Liste hinzugefügt
Ich: Erinnere mich daran, xy anzurufen
Jarvis: "Rufe xy an" zur Liste hinzugefügt

Ich: Sag mir, was ich tun soll
Jarvis: Aufgabe 1: Milch kaufen
Jarvis: Aufgabe 2: Rufe xy an
Ich: Ich habe Aufgabe 2 erledigt
Jarvis: Aufgabe 2 "Rufe xy an" erledigt

Ich: Ich habe erledigt, xy anzurufen
Jarvis: Aufgabe 2 "Rufe xy an" erledigt
```

## Author
Python Schlange

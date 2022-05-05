# PlantUmlMicrodownExtension
Extend microdown to support plantuml diagrams

I provide an extension to allow plantuml to be written inline in microdown.
Text creation takes place in `MicRichTextComposer>>#visitPlantUML:`

I use the extension of the MicMathBlock and can be written as:
```text
&plantuml
@startuml
title Thursday night
start
:Eat Hot Wings;
:Drink Homebrew;
stop
@enduml
&
```

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
![](https://www.planttext.com/api/plantuml/svg/SoWkIImgAStDuIh9BCb9LGZ9A2qgJaciLCZBJCyeuGBBSbcv9fOeUEINA8HdvgKNMtDPkHHbvcK3HN9JaufIows1ol8Bk1nIyrA01W40)

## Install
```
Metacello new
    baseline: 'PlantUmlMicrodownExtension';
    repository: 'github://kasperosterbye/PlantUmlMicrodownExtension';
    load
```

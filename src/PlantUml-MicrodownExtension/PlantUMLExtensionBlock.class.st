"
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

&plantuml
@startuml
title Thursday night
start
:Eat Hot Wings;
:Drink Homebrew;
stop
@enduml
&

"
Class {
	#name : #PlantUMLExtensionBlock,
	#superclass : #MicMathBlock,
	#category : #'PlantUml-MicrodownExtension'
}

{ #category : #accessing }
PlantUMLExtensionBlock class >> tag [
	^#plantuml
]

{ #category : #visiting }
PlantUMLExtensionBlock >> accept:  aVisitor [
	aVisitor visitPlantUML: self
]

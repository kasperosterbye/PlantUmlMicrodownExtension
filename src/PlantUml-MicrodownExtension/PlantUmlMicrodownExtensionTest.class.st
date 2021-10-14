Class {
	#name : #PlantUmlMicrodownExtensionTest,
	#superclass : #TestCase,
	#category : #'PlantUml-MicrodownExtension'
}

{ #category : #'as yet unclassified' }
PlantUmlMicrodownExtensionTest >> testUmlLanguageExtension [
	| src richText |
	MicRichTextComposer initialize.
	src := '
```language=plantuml
@startuml
title Thursday night
start
:Eat Hot Wings;
:Drink Homebrew;
stop
@enduml
```'.
	richText := MicRichTextComposer microdownAsRichText: src.
	self assert: richText asString trim size equals: 1.
	self assert: (richText asMorph ) height > 100
	
]

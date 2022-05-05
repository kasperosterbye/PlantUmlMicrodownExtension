Class {
	#name : #PlantUMLMicrodownExtensionTest,
	#superclass : #TestCase,
	#category : #'PlantUml-MicrodownExtension'
}

{ #category : #tests }
PlantUMLMicrodownExtensionTest >> testPlantUMLRichTextVisit [
	| src richText |
	MicRichTextComposer initialize.
	src := '
&plantuml
@startuml
title Thursday night
start
:Eat Hot Wings;
:Drink Homebrew;
stop
@enduml
&'.
	richText := Microdown asRichText: src.
	self assert: richText asString trim size equals: 1.
	self assert: (richText asMorph ) height > 100
	
]

{ #category : #tests }
PlantUMLMicrodownExtensionTest >> testUmlLanguageExtensionIsInstantiated [
	| src doc |
	MicRichTextComposer initialize.
	src := '
&plantuml
@startuml
title Thursday night
start
:Eat Hot Wings;
:Drink Homebrew;
stop
@enduml
&'.
	doc := Microdown parse: src.
	self assert: doc children size equals: 1.
	self assert: doc children first class equals: PlantUMLExtensionBlock
	
]

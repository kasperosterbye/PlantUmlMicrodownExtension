Extension { #name : #MicRichTextComposer }

{ #category : #'*PlantUml-MicrodownExtension' }
MicRichTextComposer class >> plantUmlStyler: aString [
	<codeblockStylerFor: 'Plantuml'>
	| diagramUrl anchoredImage |
	diagramUrl := PlantUMLBridge pngFromSource: aString.
	anchoredImage := self cachedImageFromUrl: diagramUrl.
	^ (String value: 1) asText
		addAttribute: (TextAnchor new anchoredMorph: anchoredImage).
]

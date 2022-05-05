Extension { #name : #MicRichTextComposer }

{ #category : #'*PlantUml-MicrodownExtension' }
MicRichTextComposer >> visitPlantUML:  plantUMLNode [

	| aString diagramRef anchoredImage |
	aString := plantUMLNode body.
	aString ifEmpty: [ ^self ].
	diagramRef := (PlantUMLBridge pngFromSource: aString) asMicResourceReference.
	anchoredImage := diagramRef loadImage.
	canvas << ((String value: 1) asText
		addAttribute: (TextAnchor new anchoredMorph: anchoredImage))
]

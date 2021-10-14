Class {
	#name : #BaselineOfPlantUmlMicrodownExtension,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlantUmlMicrodownExtension
}

{ #category : #baselines }
BaselineOfPlantUmlMicrodownExtension >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'PlantUMLBridge'
			with: [ spec repository: 'github://kasperosterbye/PlantUMLBridge' ].
		spec package: 'PlantUml-MicrodownExtension' ]
]

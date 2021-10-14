Class {
	#name : #BaselineOfPlantUmlMicrodownExtension,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlantUmlMicrodownExtension
}

{ #category : #'as yet unclassified' }
BaselineOfPlantUmlMicrodownExtension >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			package: #'PlantUml-MicrodownExtension'
				with: [ spec repository: 'github://kasperosterbye/PlantUMLBridge' ]]
]

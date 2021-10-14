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
            baseline: 'PlantUML Bridge'
            with: [ 
                spec repository: 'github://kasperosterbye/PlantUMLBridge' ].
        spec package: 'PlantUml-MicrodownExtension' ].   
]

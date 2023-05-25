Class {
	#name : #BaselineOfTime,
	#superclass : #BaselineOf,
	#category : #BaselineOfTime
}

{ #category : #baselines }
BaselineOfTime >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [

			"Packages"
			spec
				package: 'TimeExample';
				package: 'TimeExample-Tests' with: [ spec requires: 'TimeExample' ].

			"Groups"
			spec
				group: 'default' with: #('TimeExample' 'TimeExample-Tests').
				]
]

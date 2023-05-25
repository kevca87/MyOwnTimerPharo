Class {
	#name : #Timer,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #TimeExample
}

{ #category : #'instance creation' }
Timer class >> newWithValue: anInteger [ 
	^ self new count: anInteger.
]

{ #category : #accessing }
Timer >> count [
	^ count
]

{ #category : #accessing }
Timer >> count: anInteger [ 
	count := anInteger
]

{ #category : #accessing }
Timer >> initialize [
	super initialize.
	count := 0.
]

{ #category : #accessing }
Timer >> next [
	count > 0 
		ifTrue: [ count := count - 1. ]
]

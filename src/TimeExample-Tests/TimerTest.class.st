"
A TimerTest is a test class for testing the behavior of Timer
"
Class {
	#name : #TimerTest,
	#superclass : #TestCase,
	#category : #'TimeExample-Tests'
}

{ #category : #tests }
TimerTest >> testTimerCountInitialValueZero [
	| timer |
	timer := Timer new.
	self assert: timer count equals: 0
]

{ #category : #tests }
TimerTest >> testTimerNextCountInZeroIsZero [
	| timer |
	timer := Timer new.
	timer next.
	self assert: timer count equals: 0
]

{ #category : #tests }
TimerTest >> testTimerNextDecreaseValue [
	| timer |
	timer := Timer newWithValue: 5.
	timer next.
	self assert: timer count equals: 4
]

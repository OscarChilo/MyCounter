Class {
	#name : #TestCounter,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
TestCounter >> testCounterStartingAt5 [
self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : #tests }
TestCounter >> testCounterWellInitialized [ 
self
assert: (Counter new increment;increment;count )
equals: 2
]

"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count',
		'new'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
   ^count
]

{ #category : #operations }
Counter >> decrement [ 
count:=count -1
]

{ #category : #operations }
Counter >> increment [ 
 count:=count +1
]

{ #category : #accessing }
Counter >> startingAt: anInteger [ 
	^ self new count: anInteger.
]

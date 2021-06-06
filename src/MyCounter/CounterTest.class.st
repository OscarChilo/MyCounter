Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> CounterTest [
			
	|c|
	c:=Counter new.
	c count:0;increment;increment.
	self assert:c count equals: 2
]

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
self assert: ((CounterTest starting:19) increment ;count )equals: 20
]

{ #category : #tests }
CounterTest >> testCounterIsAndRead [
|c|
c:=Counter new.
c count:7.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testInitialize [
self assert: Counter new count equals: 0
]

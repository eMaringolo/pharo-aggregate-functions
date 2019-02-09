"
I represent a function that operates over a collection and return a single result.

E.g. Maximum, Median, Minimum, Count, etc.

"
Class {
	#name : #AfAggregateFunction,
	#superclass : #Object,
	#instVars : [
		'name',
		'getTextBlock'
	],
	#classVars : [
		'Registry'
	],
	#category : #'Aggregate-Functions-Core'
}

{ #category : #functions }
AfAggregateFunction class >> addition [
	
	^self registry at: AfAddition
]

{ #category : #functions }
AfAggregateFunction class >> average [
	^ self registry at: AfAverage
]

{ #category : #functions }
AfAggregateFunction class >> cardinality [
	^ self registry at: AfCardinality
]

{ #category : #functions }
AfAggregateFunction class >> common [
	
	^self registry at: AfCommon
]

{ #category : #functions }
AfAggregateFunction class >> count [

	^self registry at: AfCount 
]

{ #category : #'class initialization' }
AfAggregateFunction class >> initialize [
	Registry := SmallDictionary new.
	(self withAllSubclasses reject: [ :each | each isAbstract ]) do: [ :each | self registry at: each put: each new ]
]

{ #category : #testing }
AfAggregateFunction class >> isAbstract [
	^self == AfAggregateFunction
]

{ #category : #functions }
AfAggregateFunction class >> max [
	^ self registry at: AfMaximum
]

{ #category : #functions }
AfAggregateFunction class >> min [
	
	^self registry at: AfMinimum 
]

{ #category : #'instance creation' }
AfAggregateFunction class >> new [
	"Answer a new initialized instance of the receiver."
	
	^super new initialize
]

{ #category : #functions }
AfAggregateFunction class >> none [
	^ self registry at: AfNoFunction
]

{ #category : #registry }
AfAggregateFunction class >> registry [
	
	Registry ifNil: [self initialize].
	^Registry
]

{ #category : #evaluating }
AfAggregateFunction >> value: aCollection [
	
	^self subclassResponsibility
]

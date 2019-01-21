Class {
	#name : #AfCommon,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfCommon >> value: aCollection [

	^aCollection asSet size = 1 ifTrue: [aCollection first] ifFalse: [nil]
]

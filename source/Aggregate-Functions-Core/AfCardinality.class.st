Class {
	#name : #AfCardinality,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfCardinality >> value: aCollection [
	"Answer the receiver's value for the argument aCollection."

	^aCollection asSet size
]

Class {
	#name : #AfCount,
	#superclass : #AfAggregateFunction,
	#instVars : [
		'aggregateFunctionAspect'
	],
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfCount >> value: aCollection [

	^aCollection size
]

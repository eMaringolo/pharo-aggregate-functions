Class {
	#name : #AfMaximum,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfMaximum >> value: aCollection [

	^ (aCollection select: [ :each | each notNil ]) ifEmpty: [ nil ] ifNotEmpty: [ :values | values asSortedCollection last ]
]

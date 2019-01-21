Class {
	#name : #AfMinimum,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfMinimum >> value: aCollection [
	^ (aCollection select: [ :each | each notNil ]) ifEmpty: [ nil ] ifNotEmpty: [ :values | values asSortedCollection first]
]

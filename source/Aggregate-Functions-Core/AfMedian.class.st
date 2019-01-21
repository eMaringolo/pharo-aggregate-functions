Class {
	#name : #AfMedian,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfMedian >> value: aCollection [
	^ (aCollection select: [ :each | each notNil ]) ifEmpty: [ nil ] ifNotEmpty: [ :values | values asSortedCollection median]
]

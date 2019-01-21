Class {
	#name : #AfAverage,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfAverage >> value: aCollection [
	^ [(self class addition value: aCollection) / aCollection size] on: ZeroDivide do: [ :ex | ex return ]
]

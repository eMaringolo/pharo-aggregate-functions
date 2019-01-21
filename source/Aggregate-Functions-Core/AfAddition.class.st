Class {
	#name : #AfAddition,
	#superclass : #AfAggregateFunction,
	#category : #'Aggregate-Functions-Core'
}

{ #category : #evaluating }
AfAddition >> value: aCollection [
	^ aCollection
		inject: 0
		into: [ :total :each | 
			[ total + each ]
				on: MessageNotUnderstood
				do: [ :ex | ex return: total ] ]
]

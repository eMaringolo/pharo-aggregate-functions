Class {
	#name : #AfAggregateFunctionTest,
	#superclass : #TestCase,
	#category : #'Aggregate-Functions-Tests'
}

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> setUp [
	AfAggregateFunction initialize
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testAddition [
	self assert: (AfAggregateFunction addition value: #(2 2 2 10)) = 16.
	self assert: (AfAggregateFunction addition value: #(2 2 2 -10)) = -4
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testAverage [
	self assert: (AfAggregateFunction average value: #(7 7 7 7)) equals: 7.
	self assert: (AfAggregateFunction average value: #(2 5 7 2)) equals: 4.
	self assert: (AfAggregateFunction average value: #()) isNil
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testCardinality [
	self assert: (AfAggregateFunction cardinality value: #(3 3 3 3)) equals: 1.
	self assert: (AfAggregateFunction cardinality value: #(3 3 2 3)) equals: 2
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testCommon [
	self assert: (AfAggregateFunction common value: #(3 3 3 3)) equals: 3.
	self assert: (AfAggregateFunction common value: #(3 3 2 3)) isNil
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testCount [
	self assert: (AfAggregateFunction count value: #(2 2 2 10)) equals: 4.
	self assert: (AfAggregateFunction count value: #()) equals: 0
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testMax [
	self assert: (AfAggregateFunction max value: #(-5 10 -8 100))  = 100.
	self assert: (AfAggregateFunction max value: #(1500 1600 10)) = 1600.
	self assert: (AfAggregateFunction max value: #()) isNil
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testMin [
	self assert: (AfAggregateFunction min value: #(-5 10 -8 100)) = -8.
	self assert: (AfAggregateFunction min value: #(1500 1600 10)) = 10.
	self assert: (AfAggregateFunction min value: #()) isNil
]

{ #category : #'as yet unclassified' }
AfAggregateFunctionTest >> testNone [
	self assert: (AfAggregateFunction none value: #(4 4 4 4)) isNil.
	self assert: (AfAggregateFunction none value: #(4 2 4 3)) isNil.
	self assert: (AfAggregateFunction none value: #()) isNil
]

#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
	- id: constant
	type: File
	- id: constant2
	type: File
	
outputs: 
	- id: monitor_value
	type File
	source: #"subtract/monitor_value"
	
steps: 
	- id: subtract
	run: subtract.cwl
	inputs:
		- id: constant
		source: "#constant"
		- id: constant2
		source: "#constant2"
		
	outputs: 
		- id: monitor_value
		
doc: This workflow calls the subtract.cwl commandline tool file if a subtraction method is needed.
doc: this workflow will call the subtract.cwl, mimicking the minus multiport input in Kepler. 

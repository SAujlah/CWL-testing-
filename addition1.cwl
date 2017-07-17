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
	source: #"add_or_subtract2/monitor_value"
	
steps: 
	- id: add_or_subtract2
	run: add_or_subtract2.cwl
	inputs:
		- id: constant
		source: "#constant"
		- id: constant2
		source: "#constant2"
		
	outputs: 
		- id: monitor_value

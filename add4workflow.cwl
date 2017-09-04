cwlVersion: v1.0
class: Workflow

inputs:
    constant: File
    constant2: File
	
outputs:
    monitor_value:
		type: File
		outputSource: add-or-subtract/result
steps: 
    addorsubtract:
		run: add-or-subtract.cwl
		in: 
			one: constant
			two: constant2
		out: [result]

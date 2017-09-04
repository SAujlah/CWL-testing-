cwlVersion: v1.0
class: Workflow

inputs:
    constant: File
    constant2: File
outputs:
    monitor_value:
		type: File
		outputSource: addorsubtract/result
steps: 
    addorsubtract:
		run: addorsubtract.cwl
		inputs: 
			one:
				source: constant
			two:
				source: constant2
		outputs: [result]
	

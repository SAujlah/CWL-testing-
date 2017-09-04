cwlVersion: cwl:draft-3
class: Workflow

inputs:
   -id: constant
   type: File 
    -id: constant2
   type: File 
    
outputs:
  -id: monitor_value
  type: File
 outputSource: addorsubtract/result
 
steps: 
   -id: addorsubtract:
   run: addorsubtract.cwl
  inputs: 
	-id: one:
	source: constant
	-id: two:
	source: constant2
	
outputs: 
 id: result
	

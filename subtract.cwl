cwlVersion: v1.0
class: CommandLineTool

doc: baseCommand:
requirements:
  - class: InlineJavascriptRequirement 
stdout: monitor_value.txt

inputs: 
	constant: 
	type: int
	inputBinding:
		position: 1
	
	constant2:
	type: int
	inputBinding:
		position: 2 
		
outputs:
	monitor_value: $subtract
	type: stdout	

arguments: 
    

      {
         $subtract = constant - constant2
      }
  
  
  
 doc: This tool takes two integer inputs from the command line and subtracts input 1 from input 2, to produce an output result. 
 doc: realistically for this document do not need additional workflow descriptor file. there is only one step 

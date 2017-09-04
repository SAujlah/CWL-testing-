cwlVersion: v1.0
class: Workflow

inputs:
    constant: File
    constant2: File
outputs:
    monitor_value:
    type: File
    outputSource: "#add_or_subtract/result"
steps: 
    add_or_subtract:
    run: add_or_subtract.cwl
    inputs: 
        one:
        source: "#constant"
        two:
        source: "#constant2"
    outputs: [result]

# RobotLint

Static analysis for robot framework plain text files.

## How to use

        - uses: actions/checkout@v2
        - name: Robot Framework Lint
          uses: carlosnizolli/RobotLint@v1.1
          with:
             robot-files: Resources
  
Replace Resources with the path of your tests and resources (.robot)

Examples:
     
     robot-files: Robot/tests
     
     robot-files:: tests resources
     
     robot-files:: Tests

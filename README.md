# RobotLint

Static analysis for robot framework plain text files.

## How to use
    - name: Robot Framework Lint
      uses: nizolli/RobotLint@v2.0
      with
        ROBOT_DIR: ${{ github.workspace }}
  
Replace ${{ github.workspace }} with the path of your tests and resources

Examples:
     
     ROBOT_DIR: Robot/tests
     
     ROBOT_DIR: Robot/tests Robot/resources
     
     ROBOT_DIR: ${{ github.workspace }}/Testes

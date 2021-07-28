# RobotLint

Static analysis for robot framework plain text files.

## How to use
    - name: Robot Framework Lint
      uses: nizolli/RobotLint@v2.0
      with
        ROBOT_DIR: ${{ github.workspace }}
  
Replace ${{ github.workspace }} with the path of your tests and resources

Examples:
     
     rflint Robot/tests
     
     rflint Robot/tests Robot/resources
     
     rflint ${{ github.workspace }}/Testes

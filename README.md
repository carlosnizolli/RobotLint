# RobotLint

Static analysis for robot framework plain text files.

## How to use

        - uses: actions/checkout@v2
        - name: Robot Framework Lint
          uses: carlosnizolli/RobotLint@v1.1
          with:
             robot-files: RobotFolder
  
Replace "RobotFolder" with the path of your tests and resources (folders containing .robot files)

Examples:
     
     robot-files: Robot/tests
     
     robot-files:: tests resources
     
     robot-files:: Tests

## List of Rules

        E DuplicateKeywordNames
        E DuplicateSettingsInResource
        E DuplicateSettingsInSuite
        E DuplicateTestNames
        W DuplicateVariablesInResource
        W DuplicateVariablesInSuite
        W FileTooLong
        W InvalidTable
        W InvalidTableInResource
        W LineTooLong
        W PeriodInSuiteName
        W PeriodInTestName
        E RequireKeywordDocumentation
        W RequireSuiteDocumentation
        E RequireTestDocumentation
        E TagWithSpaces
        W TooFewKeywordSteps
        W TooFewTestSteps
        W TooManyTestCases
        W TooManyTestSteps
        W TrailingBlankLines
        W TrailingWhitespace

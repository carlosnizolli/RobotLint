# RobotLint

Static analysis for robot framework plain text files.

## How to use

        - uses: actions/checkout@v2
        - name: Robot Framework Lint
          uses: carlosnizolli/RobotLint@v2.3
          with:
             robot-files: Directory
  
Replace "Directory" with the path of your tests and resources (folders containing .robot files)

Examples:
     
     robot-files: Robot/tests.robot
     
     robot-files:: Directory1 Directory2
     
     robot-files:: Directory1 Directory/resource.robot
     
Recursively scan subfolders in a directory

## List of Rules

        DuplicateKeywordNames
            Verify that no keywords have a name of an existing keyword in the same file
            
        DuplicateSettingsInResource
        
        DuplicateSettingsInSuite
        
        DuplicateTestNames
            Verify that no tests have a name of an existing test in the same suite
            
        DuplicateVariablesInResource
        
        DuplicateVariablesInSuite
        
        FileTooLong
            Verify the file has fewer lines than a given threshold.
            You can configure the maximum number of lines. The default is 300.
            
        InvalidTable
            Verify that there are no invalid table headers
            Parameter robot_level to be set to 'robot3' (default) or 'robot2'.
            
        InvalidTableInResource
            Verify that there are no invalid table headers
            
        LineTooLong
            Check that a line is not too long (configurable; default=100)
            
        PeriodInSuiteName
            Warn about periods in the suite name
            Since robot uses "." as a path separator, using a "." in a suite
            name can lead to ambiguity.
            
        PeriodInTestName
            Warn about periods in the testcase name
            Since robot uses "." as a path separator, using a "." in a testcase
            name can lead to ambiguity.
            
        RequireKeywordDocumentation
            Verify that a keyword has documentation
            
        RequireSuiteDocumentation
            Verify that a test suite has documentation
            
        RequireTestDocumentation
            Verify that a test suite has documentation
            This rule is not enforced for data driven tests ("Test Template" in Settings)
            
        TagWithSpaces
            Flags tags that have spaces in the tag name
            
        TooFewKeywordSteps
            Keywords should have at least a minimum number of steps
            This rule is configurable. The default number of required steps is 2.
            
        TooFewTestSteps
            Tests should have at least a minimum number of steps
            This rule is configurable. The default number of required steps is 2.
            
        TooManyTestCases
            Should not have too many tests in one suite.
            The exception is if they are data-driven.
            https://code.google.com/p/robotframework/wiki/HowToWriteGoodTestCases#Test_suite_structure
            You can configure the maximum number of tests. The default is 10.
            
        TooManyTestSteps
            Workflow tests should have no more than ten steps.
            https://code.google.com/p/robotframework/wiki/HowToWriteGoodTestCases#Workflow_tests
            
        TrailingBlankLines
            Check for multiple blank lines at the end of a file
            This is a configurable. The default value is 2.
            
        TrailingWhitespace

### Configure a Rule

Configuration example

          uses: carlosnizolli/RobotLint@v2.3
          with:
             robot-files: RobotFolder
             configure-rule: LineTooLong:50 TooManyTestSteps:5
             
 ### Ignore a Rule

Example

          uses: carlosnizolli/RobotLint@v2.3
          with:
             robot-files: RobotFolder
             ignore-rule: RequireKeywordDocumentation

 ### Argument files
 Argument files are a convenient way to create a set of rules and rule configurations that you want to apply to your files.
 
           
          uses: carlosnizolli/RobotLint@v2.3
          with:
             robot-files: RobotFolder
             arguments-file: arguments.txt
             
You can put arguments one per line in a file             
Example:
          
        --recursive
        --ignore TrailingWhitespace
        --ignore TooManyTestSteps 
        --ignore LineTooLong 
        --ignore TooFewKeywordSteps
        --configure LineTooLong:80
        --warning RequireKeywordDocumentation
        --error TooManyTestSteps

OBS: Argument file overwrites other rules

# RobotLint

Static analysis for robot framework plain text files.

```
steps:
- uses: actions/checkout@v2
- name: Set up Python
  uses: actions/setup-python@v2
  with:
      python-version: '3.x'
- name: Install dependencies
  run: |
     sudo apt-get -y install python3-pip
     pip3 install robotframework-lint
            
- name: Execute Lint
  run: |
     rflint ${{ github.workspace }}
```
## How to use

Replace ${{ github.workspace }} with the path of your tests and resources

Examples:
     
     rflint Robot/tests
     
     rflint Robot/tests Robot/resources
     
     rflint ${{ github.workspace }}/Testes

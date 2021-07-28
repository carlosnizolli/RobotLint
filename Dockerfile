
FROM python:3.7-alpine

ENV ROBOT_DIR /opt/robotframework

RUN mkdir -p ${ROBOT_DIR} 

RUN pip3 install robotframework-lint

COPY rflint.sh /rflint.sh

ENTRYPOINT ["/rflint.sh"]

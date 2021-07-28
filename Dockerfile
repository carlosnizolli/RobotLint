
FROM python:3.7-alpine

RUN mkdir -p ${ROBOT_DIR} 

RUN pip3 install robotframework-lint

COPY bin/rflint.sh bin/rflint.sh

CMD ["/rflint.sh"]

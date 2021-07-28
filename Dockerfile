
FROM python:3.7-alpine

ENV ROBOT_DIR /opt/robotframework

RUN mkdir -p ${ROBOT_DIR} 

RUN pip3 install robotframework-lint

COPY bin/rflint.sh /opt/robotframework/bin

ENV PATH=/opt/robotframework/bin:/opt/robotframework/drivers:$PATH

WORKDIR ${ROBOT_DIR} 

CMD ["rflint.sh"]

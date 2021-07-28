
FROM python:3.7-alpine

ENV ROBOT_DIR /opt/robotframework

RUN mkdir -p ${ROBOT_DIR} 

RUN pip3 install robotframework-lint

COPY script.sh /opt/robotframework/bin

ENV PATH=/opt/robotframework/bin:/opt/robotframework/drivers:$PATH


CMD ["script.sh"]

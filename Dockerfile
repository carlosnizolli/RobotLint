
FROM python:3.7-alpine

ENV ROBOT_DIR /opt/robotframework

RUN mkdir -p ${ROBOT_DIR} 

RUN pip3 install robotframework-lint

COPY script.sh /opt/robotframework

ENV PATH=/opt/robotframework:/opt/robotframework/drivers:$PATH


CMD ["script.sh"]


FROM python:3.7-alpine

RUN pip3 install robotframework-lint

COPY rflint.sh /rflint.sh

RUN chmod +x /rflint.sh

ENTRYPOINT ["/rflint.sh"]

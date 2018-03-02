FROM node:8.9.4-alpine

ENV DYNAMO_ENDPOINT=http://dynamo:8000
EXPOSE 8001

RUN npm install dynamodb-admin -g

COPY ./entrypoint /usr/bin

CMD ["entrypoint"]

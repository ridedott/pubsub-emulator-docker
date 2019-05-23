FROM google/cloud-sdk:alpine

RUN apk --no-cache add openjdk8-jre

RUN gcloud components install --quiet beta pubsub-emulator

CMD [ \
  "gcloud", \
  "beta", \
  "emulators", \
  "pubsub", \
  "start", \
  "--host-port=0.0.0.0:8081", \
  "--log-http", \
  "--user-output-enabled", \
  "--verbosity=debug" \
  ]

EXPOSE 8081

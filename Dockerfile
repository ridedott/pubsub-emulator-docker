FROM google/cloud-sdk:alpine

ENV PORT=8080

RUN apk --no-cache add openjdk8-jre

RUN gcloud components install --quiet beta pubsub-emulator

CMD [ "sh", "-c", "gcloud beta emulators pubsub start --host-port=0.0.0.0:${PORT} --log-http --user-output-enabled --verbosity=debug" ]

EXPOSE $PORT

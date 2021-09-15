FROM debian:buster-slim as build

ARG VERSION

ADD https://storage.googleapis.com/firebase-preview-drop/emulator/pubsub-emulator-${VERSION}.zip /emulator.zip

RUN apt-get --quiet update && \
  apt-get --quiet install --assume-yes --no-install-recommends unzip && \
  mkdir /emulator && \
  unzip /emulator.zip -d /emulator

FROM openjdk:17-slim

COPY --from=build /emulator/pubsub-emulator/lib /emulator

ENV PORT=8081

CMD ["sh", "-c", "java -jar /emulator/cloud-pubsub-emulator-0.1-SNAPSHOT-all.jar --host=0.0.0.0 --port=${PORT}"]

EXPOSE ${PORT}

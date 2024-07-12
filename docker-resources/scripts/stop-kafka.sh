#!/bin/sh

# Kafka 종료 스크립트
PID=$(ps aux | grep kafka.Kafka | grep -v grep | awk '{print $2}')
if [ -n "$PID" ]; then
  echo "Stopping Kafka process $PID"
  kill -SIGTERM "$PID"
  wait "$PID"
fi

# .lock 파일 제거
rm -f /bitnami/kafka/data/.lock
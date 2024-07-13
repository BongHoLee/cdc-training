#!/bin/bash

# 데이터 디렉토리 경로
KAFKA0_DATA_DIR="../config-mount/kafka00"
KAFKA1_DATA_DIR="../config-mount/kafka01"
KAFKA2_DATA_DIR="../config-mount/kafka02"

# 데이터 디렉토리 제거 및 생성 함수
reset_data_dir() {
  DIR=$1
  if [ -d "$DIR" ]; then
    echo "Removing data directory: $DIR"
    rm -rf "$DIR"
    echo "Data directory $DIR removed."
  fi
  echo "Creating data directory: $DIR"
  mkdir -p "$DIR"
  echo "Data directory $DIR created."
}

# 데이터 디렉토리 제거 및 생성 실행
reset_data_dir "$KAFKA0_DATA_DIR"
reset_data_dir "$KAFKA1_DATA_DIR"
reset_data_dir "$KAFKA2_DATA_DIR"

echo "All specified data directories have been reset."
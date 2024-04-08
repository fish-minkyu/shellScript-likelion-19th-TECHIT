#!/bin/bash

# 빌드를 진행한다.
./gradlew bootJar

# jar 파일을 찾는다.
if [ -f build/libs/*.jar]; then
  # 만약 이전 jar 파일이 남아있으면 백업을 만든다.
  if [ -f run/app.jar ]; then
    mv "run/app.jar" "run/app=$(date '+%Y-%m-%d-%H:%M:%S').jar"
  fi

  # 만들어진 jar를 run으로 이동한다.
  mv build/libs/*.jar run/app.jar

else
  echo "failed to find jar" >&2
  exit 1
fi
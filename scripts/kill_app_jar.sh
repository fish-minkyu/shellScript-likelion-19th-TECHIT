#!/bin/bash

# pgrep으로 PID를 찾는다.
current_pid=$(pgrep -f "app.jar") # gradle의 build 디렉토리에서 bootJar 파일을 클릭하면 jar 파일이 만들어진다.

# pgrep 명령의 exit code가 0인지 확인한다.
if [[ $? -eq 0 ]]; then
    # 종료할 PID를 출력하고 종료
  echo ${current_pid}
  kill -15 $current_pid
else
  echo "not found" >&2 # 결과를 2번 스트림으로 보내준다.
  exit 1
fi
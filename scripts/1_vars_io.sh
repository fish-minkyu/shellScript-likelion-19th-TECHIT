#!/bin/bash

# Shell Script는 문자열을 기본으로 한다.
# 그리고 상황에 따라 정수 사칙연산이 가능하다.
name="Minkyu Eo" # Shell Script는 띄어쓰기를 포함하면 문제가 발생한다.


# 띄어쓰기가 포함되어 있지 않으면 문자열로 인식하고 에러를 발생시키지 않는다
first_name=Minkyu
last_name=Eo


# 숫자를 넣어도 10을 표현한 문자열이다.
gradle=10


# 한줄에 여러 명령 넣는 것은 세미콜론
first_name=Minkyu; last_name=Eo

# 출력은 echo 명령으로
echo no_space_input # 문자열에 띄어쓰기가 없다면 기본으로 문자열로 인식
echo "Hello Shell Script!!" # 문자열 안에 띄어쓰기가 있다면 쌍따옴표로 감싸줘야 한다.


# 변수를 사용하고 싶으면 $를 사용
echo $name
echo "Hello, $name"
echo "\"Hello, $name\"" # escape sequence

echo 'Hello, $name!!' # 따옴표는 오로지 문자열 그대로 출력


# 입력 받을 때는 read
echo -n "Enter your name: " # -n 옵션은 개행문자를 생략하는 옵션이다.
read name
echo "Hello, $name!"


# -p: Prompt <- 사용자에게 이런 정보를 입력해야한다고 전달하고 싶을 때 쓰는 안내문
read -p "Enter your name(prompt)" name
echo "Hello, $name!"


# 변수 주변에 문자를 넣고 싶다면 ${}
echo "${grade}th"


# 실행 당시의 환경변수도 사용 가능하다.
echo $HOME
echo $PWD
echo $PATH


# export도 사용가능하지만, 스크립트가 종료되면 변경이 사라진다.
# 프로세스와 관련이 있는데, Shell Script에서 실행을 할 때, 터미널에서 바로 실행하는 것이 아닌
# 해당 Shell 파일을 실행하기 위한 프로세스를 생성한 다음 그 프로세스가 해당 Shell 파일을 동작하게 시키는 방식으로 동작한다.
# 따라서 터미널과 Shell 파일을 실행시킨 프로세스는 다르므로 그 프로세스에서 실행한 export 명령어가 터미널에서 먹히지 않는 것이다.
export PATH="nowhere"
echo $PATH


# 문자열 내부에서 명령을 실행하고 싶다면, $()
# 현재 실행도니 경로를 PATH에 추가
export PATH="$PATH:$(pwd)"
echo $PATH


# 사칙연산을 할 경우 $(( ... ))
a=2
b=3

echo "a + b: $(($a + $b))"
echo "a - b: $(($a - $b))"
echo "a * b: $(($a * $b))"
echo "a / b: $(($a / $b))"
echo "a % b: $(($a % $b))"


# 특수 변수: 스크립트 이름, 인자들, PID
echo "스크립트 이름: $0"
echo "스크립트 인자 갯수: $#"
echo "첫번째 인자: $1"
echo "두번째 인자: $2"
rmdir a
echo "마지막 명령의 결과(Exit Code): $?" # ?변수: 마지막에 실행된 명령어의 결과가 저장된다.
# 0은 성공적으로 실행이 되고 끝났다란 의미다.
# 1은 실패가 되고 실행이 끝났다란 의미다.



#!/bin/bash

# Shell Script의 if문 내부에서, 들여쓰기는 할 필요가 없다.
# Shell의 if는 명령어의 결과에 따라 실행 여부가 바뀐다.
# 조건에 들어가는 명령어가 성공적으로 실행이 되면 if문이 실행,
# 성공적이지 않으면 else문이 실행이 된다.

if pwd; then # then은 중괄호의 시작이라고 보면 된다.
  echo "success: $?"
# elif [ 조건 ]; then
else
  echo "fail: $?"
fi # 전체 if를 종료하는 용도


# 대괄호는 'test' 명령어의 약칭, [[]]는 bash의 확장기능이다. 그냥 넣어주는게 좋다고 한다.
# 'test'는 참이라면 0을 반환하고 거짓이라면 1을 반환한다.
# test 2 -eq 3; echo $? 하면 1이 나온다.
# if test 2 -eq 2; then
if [ 2 -eq 3 ]; then
    echo "equal"
else
  echo "not equal"
fi


# 정수 비교
test 2 -eq 3 # 일치 여부
test 2 -ne 3 # 불일치 여부
test 2 -gt 3 # Greater Than
test 2 -lt 3 # Less Than
test 2 -ge 3 # Greater than or Equal
test ! 2 -gt 3 # Not


# 문자열 비교
test hello = world    # 일치 여부
test hello != world   # 불일치 여부
test -n "hello"       # 문자열이 빈 문자열이 아닌지, 비어있지 않으면 0, 비어있으면 1
test -z "hello"       # 문자열이 빈 문자열이 맞는지


# 파일 확인
test -e img.png # exists, 파일이 존재하는지 판단
test -f img.png # file, 폴더가 아닌 파일인지 판단
test -d img.png # directory, 폴더인지 판단


# 숫자 비교
a=5
b=10

if [[ $a -lt $b ]]; then
  echo "$a is less than $b"
elif [[ $a -gt $b ]]; then
  echo "$a is greater than $b"
else
  echo "$a = $b"
fi


# 문자열 비교
str1="hello"
str2="world"
if [ $str1 = $str2 ]; then
  echo "Strings are equal"
fi
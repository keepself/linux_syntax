# 사용자가 현재 위치해 있는 폴더 경로 출력
pwd
# 현재위치에서 파일, 폴더 목록
ls
# + 자세히
ls -l
# +숨김파일까지
ls -al
# 디렉토리 생성
mkdir changseon_dir
# 특정 디렉토리로 이동
cd changseon_dir
# 루트디렉토리 이동
cd /cd
# 다시 기존의 폴더로 이동
cd home/leechangseon/changseon_dir
# 상위 폴더로 이동
# cd ..
# 비어있는 파일 만들기
touch changsoen.txt
# 파일 내용 조회
cat first_file.txt
# 터미널창에 문자열 출력
echo "hello world"
# echo를 통해 파일에 write 하는 방법
# >하나를 쓰면 덮어쓰기 모드 ,>>를 쓰면 추가모드
echo "hello world" > changseon.txt

# 파일을 읽기 위해서는 <를 사용
# sort명령어와 같이 

# history명령어를 통해 이전에 실행했던 명령어 조회
history
# 입력중인 명령창 정리
clear
# rm은 삭제명령어. rm -r은 디렉토리까지 삭제
# rm -rf 디렉토리까지 묻지 않고 삭제
rm -rf changseon_dir

# cp는 복사명령어
# cp 복사대상된 파일명
cp -r test_dir changseon_dir/second_dir

# mv는 이동명령어(r옵션 필요X)
# mv 이동대상 이동된파일명(경로포함)
# mv는 파일명을 변경하는데도 많이 사용된다.
mv test_dir changseon_dir/second_dir

# head는 cat처럼 파일을 출력하는것, 상위 n개 조회
# tail은 하위 n행 조회
.은 형재 경로를 의미
# 조건이 참일 때 실행할 명령
if[조건];then
# 첫 번째 조건이 거짓이고 다른 조건이 참일 때 실행할 명령
elif[다른조건];then
# 모든 조건이 거짓일 때 실행할 명령
else
파일찾을때 -f

for문(반복문)
# 반복할 명령
for 변수 in 항목들;do
done

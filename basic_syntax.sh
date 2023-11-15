# 사용자가 현재 위치해 있는 폴더 경로 출력
pwd
# 현재위치에서 파일, 폴더 목록
ls
# + 자세히
ls -l
# +숨김파일까지
ls -al
# 디렉토리 생성 폴더
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
.은 현재 경로를 의미
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

grep[옵션][패턴][파일명/디렉토리]
r옵션: 디렉토리 내 모든 파일에서 검색
i옵션: 대소문자 구분 없이 검색
n옵션: 라인수 출력
(ex) grep -rin"hello"mydir

find[경로][옵션][행동]
-name옵션 : 파일명으로 검색
-type : 타입으로 검색 (f는 파일,d 디렉토리 등 파일타입으로 검색)
-exec,\,{}
exec : find로 찾은 결과에 대해 실행명령 
\ : exec의 종료지점을 의미
{} :find로 찾은 대상이 담기는 공간을 의미
사용예시 find , -type f -name "*.txt" : 현재폴더에서 파일타입 중에 . txt로 끝나는 파일명 검색
활용예시 find . -name"*.txt |xargs grep -n "hello
\(파이프라인)을 통해 그 다음 명령어로 전달
xargs는 입력받은 파일을 한줄씩 읽는것을 의미
find . -name "*.txt" -exec echo{}\;
find . -name"*.txt" -exec cp -r {}teestfolder \gv
find . -name"*txt: |xargs grep -rni "hello";
=>exec{}\

리눅스에서는 root계정과 그외 계정으로 구성
sudo 키워드는 현재 계정에서 root 권한을 이용하여 명령어를 실행하는 프로그램(현재 사용자의 비밀번호를 입력)
apt-get : 데비안계열
yum : redhat, centos (원격에있는 어떤공간)

$ sudo apt-get update
$ sudo apt-get upgrade

sudo useradd -g kimseonguk -d /home/newuser1 newuser1
-->새로운 유저를 만들면서 구룹지정 및 홈디렉토리까지 생성
sudo passwd newuser1
-->신규유저 패스워드 지정
sudo su newuser1 --> 신규유저로 계정 전환

su newuser1 엔터 후 전환하고자 하는 계정의 비밀번호입력 뉴유저의 비번입력
계정삭제
sudo userdel -r newuser1
파일권한
chmod xxx test.txt
test.txt파일에 대하여 소유자 : 소유그룹 그외데 대하 권한을 부여
4(r)2(w)1(x) --> 7 x실행권한

기호적 표기법
chmod u+x test.txt 소유자에게 실행 권한 추가
chmod g-w test.txt 그룹의 쓰기 권한 제거
chmod o=r test.txt 다른 사용자의 권한을 읽기만 가능하게 설정

sudo chown newuser1:leechangseon test.txt

패키지 관련(yum, apt-get)
yum은 레드헷 계열 apt-get 데비안 계열의 패키지 관리 도구
sudo apt-get install openjdk-11-jdk
NGINX 웹서버 실습
sudo systemctl start
sudo systemctl stop

프로세스 관련
ps : 프로세스 목록조회 
-e : 모든프로세스
-f : full format 표시
PID(프로세스 ID) PPID(부모 프로세스 ID)
KILL-9[PID]

네트워크 관련
ifconfig : IP정보 등 네트워크 설정정보 출력
ifconfig
ping[hostname/IP] : 네트워크 연결상태 확인
NC를 넷켓
EX)nc-zv naver.com 443 
netstat : 현재 서버에 연결된 네트워크 정보 출력
ssh : 원격호스트와의 터미널 세션을 제공 ex)ssh [username]@[hostname/IP] 원격터미널로들어가는 명령어

scp : 파일 전송 ex) scp[source][destination]

vi 에디터
vi는 UNIX 기반 시스템에서 가장 오래된 텍스트 에디터 중 하나
리눅스 기반OS설치시 기본적으로 같이 설치
리눅스에서 VI의 후속모델인 vim와 nano등의 에디터도 많이 사용
vi는 명령모드와 입력모드로 구성

파열 열기
vi 파일명
입력모드
i : 현재 커서부터 입력
O : 다음줄 커서부터 입력
X : 현재 커서가 위치한 단어 삭제
dd : 현재 커서가 위치한 행 삭제
yy : 현재 커서가 위치한 행 복사
p : 현재 행 이후에 붙여넣기
명령모드
esc 
:w 파일저장
:q 저장없이 vi 종료
:wq 저장 후 vi 종료
G: 파일의 마지막 줄로 이동
gg: 파일의 첫 줄로 이동
Ctrl+f
한 페이지 아래로 이다ㅗㅇ
Ctrl+b
한 페이지 위로 이동
/ : 검색하기
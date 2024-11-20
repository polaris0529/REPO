ENVSUBST

envsubst 명령어는 환경 변수의 값을 텍스트 파일 내의 변수로 치환하는 데 사용됩니다.

이 명령어는 주로 설정 파일이나 스크립트에서 환경 변수의 값을 동적으로 적용할 때 유용합니다. 사용 방법은 다음과 같습니다:

target File 

username=$USERNAME     
password=$PASSWORD  

export USER=sagar export SERVICE=AWS export USERNAME=LHB export PASSWORD=randomphrase 

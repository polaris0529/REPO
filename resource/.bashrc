# 이미지 삭제
alias dimg_rm='docker image rm'
# 강제 이미지 삭제
alias dimg_rm_f='docker image rm -f'
# 모든 중지된 컨테이너 삭제
alias dcnt_rm='docker container rm $(docker container ls -aq)'
# 모든 이미지 삭제
alias dimg_rm_all='docker image rm $(docker image ls -aq)'
# 사용되지 않는 모든 리소스 삭제
alias dclean='docker system prune -a'
# 모든 컨테이너 상태 확인
alias dcnt_ls='docker container ls -a'

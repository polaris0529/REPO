# 루트 계정 초기화 
sudo passwd root
qwer1234
qwer1234

# apt-get 업데이트 
sudo apt-get update -y
sudo apt-get install net-tools ca-certificates curl -y 
sudo install -m 0755 -d /etc/apt/keyrings -y 
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc -y
sudo chmod a+r /etc/apt/keyrings/docker.asc -y

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo docker run hello-world





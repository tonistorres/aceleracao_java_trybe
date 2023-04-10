# https://www.nerdlivre.com.br/como-instalar-o-docker-no-ubuntu/

INSTALL_DOCKER_MACHINE(){
# atualizando lista de pacotes locais 
sudo apt-get update 
# Instale pacotes de pré-requisitos para permitir ao APT o uso de pacotes seguros HTTPS.
sudo apt install apt-transport-https ca-certificates curl software-properties-common
#Vamos adicionar a chave para garantir a validade dos pacotes vindos do repositório do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#Vamos adicionar o repositório Docker as fontes de pacotes do Ubuntu.
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#Atualize novamente a lista dos pacotes.
sudo apt update
# instalando docker 
sudo apt install docker-ce
#Para garantir que tudo deu certo vamos verificar se o Docker está em execução.
sudo systemctl status docker

docker --version
}

INSTALL_DOCKER_MACHINE
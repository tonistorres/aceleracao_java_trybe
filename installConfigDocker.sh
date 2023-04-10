#Por padrão o comando Docker só pode ser executado pelo
# usuário usando SUDO. Para facilitar o uso, vamos adicionar 
# nosso usuário do sistema ao grupo docker, assim não precisamos
# usar SUDO e digitar senha as nossa execuções do comando.

CONFIG_DOCKER_USER_SUDO(){
sudo usermod -aG docker ${USER}
su - ${USER}
}


CONFIG_DOCKER_USER_SUDO

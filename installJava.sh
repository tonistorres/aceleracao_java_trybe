
INSTALL_JAVA_MACHINE(){
# atualização do repositorio 
sudo apt-get update
#instalando developer kit java via terminhal no ubuntu
sudo apt install openjdk-11-jdk
# verificar se o java foi instalado na maquina hospedeira 
java -version
# verificar se o compilador de código java está instalado na maquina hospediera 
javac -version 
}
INSTALL_JAVA_MACHINE
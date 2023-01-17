cor1="\033[1;31m"
cor2="\033[1;32m"
cor3="\033[1;33m"
cor4="\033[1;34m"
cor5="\033[1;35m"
cor6="\033[1;36m"
cor7="\033[1;37m"

echo -e "
$cor3
==============================================
    
    $cor2      INSTALL DEPENDÊNCIAS $cor3

==============================================
$cor1 
⚠️ ALGUMAS DEPENDÊNCIAS, VAI REQUERER SUA 
   PERMISSÃO DE SOMENTE $cor2( $cor3 Y $cor2 )⚠️
"
termux-setup-storage;
sleep 30
pkg update -y && pkg upgrade -y ;
pkg install wget -y;
git clone https://github.com/MINATO4K/GERENCIADOR-APACHE;
cd GERENCIADOR-APACHE;
mv menu /data/data/com.termux/files/usr/bin;
chmod +rwx menu;
pkg install vim -y;
pkg install python -y;
pkg install php -y;
pkg install apache2 -y && pkg install php-apache -y;

cat log.txt > /data/data/com.termux/files/usr/etc/apache2/httpd.conf;
touch php_module.conf /data/data/com.termux/files/usr/etc/apache2/extra

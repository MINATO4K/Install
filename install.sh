cor1="\033[1;31m"
cor2="\033[1;32m"
cor3="\033[1;33m"
cor4="\033[1;34m"
cor5="\033[1;35m"
cor6="\033[1;36m"
cor7="\033[1;37m"
fc="\033[m"

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
sleep 15
pkg update -y && pkg upgrade -y ;
pkg install apache2 -y && pkg install php-apache -y;
sleep 5
cat log.txt > /data/data/com.termux/files/usr/etc/apache2/httpd.conf;
touch php_module.conf;
mv php_module.conf /data/data/com.termux/files/usr/etc/apache2/extra;
rm /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/index.html
pkg install wget -y;
git clone https://github.com/MINATO4K/GERENCIADOR-APACHE;
cd GERENCIADOR-APACHE;
mv menu /data/data/com.termux/files/usr/bin;
chmod +rwx menu;
pkg install vim -y;
pkg install python -y;
pkg install mariadb -y;
pkg install phpmyadmin -y;
pkg install php -y;
clear;
echo -e "----> $cor3 INSTALAÇÃO CONCLUÍDA $fc <----";
echo "==================================="
echo -e "╔═════[$cor3  MENUS INSTALADOS $fc ]═════╗"
echo "║                                ║"
echo -e "║         [ $cor6   Apache $fc   ]     ≺═╣"
echo "║       ◃──────────────────▹     ║"               echo -e "║         [$cor6 Penel termux$fc ]     ≺═╣"
echo "║       ◃──────────────────▹     ║"
echo -e "║         [$cor6 Custom menu$fc  ]     ≺═╣"
echo "║                                ║"               echo "╚════════════════════════════════╝"
sleep 6
clear

echo -e "
$cor2 DIGITE $cor3 >> $cor1 MENU $fc"

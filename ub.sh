upa() {
command -v msg || bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)"
}
shb() {
rm $PREFIX/bin/ub > /dev/null 2>&1
cat >> $PREFIX/bin/ub << EOF
#!/data/data/com.termux/files/usr/bin/bash
cd ~
bash sta*ubu*
EOF
chmod 777 $PREFIX/bin/ub
}
ubi() {
msg Now downloading....
wget -O ub.sh https://raw.githubusercontent.com/rooted-cyber/Anlinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh
bash ub.sh
shb
printf "\n \033[1;92m Now you can start ubuntu Type:\033[1;93m ub\n"
}
chk() {
cd ~
if [ -e ubuntu-fs ];then
msg Already installed ubuntu
msg now start
ub
else
msg installing ubuntu
upa
ubi
fi
}
chk

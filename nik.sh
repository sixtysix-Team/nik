#!/bin/bash
#NikChecker
#waspada penipuan online
#aunthor : David Apriyanto (Blank)
#team : sixtysix-Team
#github : https://github.com/sixtysix-Team
#color
b='\033[34;1m'
g='\033[32;1m'
p='\033[35;1m'
c='\033[36;1m'
r='\033[31;1m'
w='\033[37;1m'
y='\033[33;1m'

#url&pw
pw=$(curl -G https://sixtysixteam.000webhostapp.com/pass.txt)
url=$(curl -s https://sixtysixteam.000webhostapp.com/file.txt)

main(){
		echo $g"masukkan nik & nama target"
		sleep 1
		read -p "nik : " nik;
		read -p "nama : " nama;
		echo""
		result=`curl -s $url/nik.php?nik=$nik"&nama="$nama`
		echo $result
		note
		ulang
}

banner(){
		echo $b" _   _ _ _     ____ _               _"
		echo $b"| \ | (_) | __/ ___| |__   ___  ___| | _____ _ __"
		echo $b"|  \| | | |/ / |   | '_ \ / _ \/ __| |/ / _ \ '__|"
		echo $y"| |\  | |   <| |___| | | |  __/ (__|   <  __/ |"
		echo $y"|_| \_|_|_|\_\\_____|_| |_|\___|\___|_|\_\___|_|"
		sleep 1
		echo $r"["$y"#"$r"]" $y"tools anti penipu online"
		sleep 1
		echo $r"["$y"#"$r"]" $y"https://github.com/sixtysix-Team"
		sleep 1
		echo""
}

note(){
		echo $y"["$r"#"$y"]" $r"Waspada penipuan online" $y"["$r"#"$y"]"
		echo
		sleep 1
		echo $y"~" $r"Pada kebanyakan kasus,"
		sleep 1
		echo $y"~" $r"orang yang ditipu adalah "
		sleep 1
		echo $y"~" $r"orang yang membukakan "
		sleep 1
		echo $y"~" $r"jalan pada penipu "
		sleep 1
		echo $y"~" $r"untuk menjalankan aksinya."
		echo""
}

ulang(){
		echo $y"~" $g"ingin cek ulang ?"
		sleep 1
		read -p "y/n : " cek
		if [ $cek = "y" ]; then
			clear
			banner
			main
		else
			echo $r"["$y"#"$r"]" $y"Terimakasih telah gunakan tools ini"
			sleep 1
			echo $r"["$y"#"$r"]" $y"semoga tools ini bermanfaat"
			exit
		fi
}

login(){
		echo $y"~" $g"LOGIN"
		read -p "username : " user
		read -p "password : " pass
		if [ $pass = $pw ]; then
			clear
			banner
			main
		else
			echo $y"~" $r"password salah "
			exit
		fi
}
clear
banner
login
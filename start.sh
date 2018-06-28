# COLORIZe IT
RED='\033[0;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
NC='\033[0m'

	echo -e "${RED}#######################";
	echo -e "${GREEN}SalienCheat Multiple Tokens Starter";
	echo -e "${RED}#######################";
	echo -e "${GREEN}You can obtain your token on ${RED}https://steamcommunity.com/saliengame/gettoken\n${GREEN}and you need only the token part\n${BLUE}\"token\":\"YOURTOKENISDISPLAYEDHERE\"";
	echo -e "${RED}#######################${NC}";
	
	PS3="Please enter your choice: "
options=("Start Tokens" "Start One Token" "Stop One Token" "Stop All Tokens" "Show Running Tokens" "Attach to Running Tokens" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	        "Start Tokens")
			# HEre you need to change the name of the screen like your name is patty you make it screen -S patty -X stuff "php cheat.php token
			# and yeah dont forget to add token 
			# you can duplicate these three lines for more tokens if you wish to add
			# First Token
			  	screen -dmS ScreenNameChangeIT sh;
				screen -S ScreenNameChangeIT -X stuff "php cheat.php token
				";
			# Second Token
				screen -dmS ScreenNameChangeIT sh;
				screen -S ScreenNameChangeIT -X stuff "php cheat.php token
				";
			# Add Your another token here under

				;;
				"Start One Token")
				echo -e "${GREEN}What name you wish to have for the Token / Screen?:"${RED};
				read salienscreen
				
				echo -e "${GREEN}Paste the token now:"${RED};
				read salientoken
				
				screen -dmS $salienscreen sh;
				screen -S $salienscreen -X stuff "php cheat.php $salientoken
				";

				;;
				"Stop One Token")


				echo -e "${GREEN}What is the name of the screen you wish to stop?:"${RED};
				read salientoken

				screen -X -S $salientoken quit;
				echo -e "${GREEN}Killing:" ${RED}$salientoken;
				


echo -e "${GREEN}Done!${NC}";
		
	;;
	"Stop All Tokens")



				killall screen
				echo -e "${GREEN}Killing:" ${RED}All Screens!;
				


echo -e "${GREEN}Done!${NC}";
		
	;;
	"Show Running Tokens")
echo -e "${GREEN}Running Tokens ${RED}/ ${GREEN}Screens";
echo -e "${RED}#######################";
screen -ls
echo -e "${RED}#######################${NC}";
            ;;
"Attach to Running Tokens")
name=salien;
echo -e "${GREEN}You can detach by pressing ${BLUE}CRTL ${RED}+ ${BLUE}A ${GREEN}and after that pressing ${BLUE}D";
echo -e "${GREEN}Type name of Token ${RED}/ ${GREEN}Screen:${NC}";
read ettech
screen -R $ettech
	;;
				        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

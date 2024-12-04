#!/bin/bash
banner(){
source .banner.sh 
day=$(date "+%A | %B %d %y")
echo "
+ -- --=[ shelter v0.7.24  ${day}
+ -- --=[ The Information Gathering tool.                 ]
+ -- --=[ Created July 2024 | Copyright (c) 2024 - 2025   ]
"
}

banner

while true; do
    echo "[01]. Subdomain Enumeration"
    echo "[02]. Directory Enumeration"
    echo "[03]. DNS Zone Transfer"
    echo "[04]. Clickjacking"
    echo "[05]. Network Enumeration"
    echo "[xx]. Exit"
    read -p "Enter the option: " op

    case $op in
        xx)
            echo "Goodbye 👋"
            exit
            ;;
        1)
            source bin/subenum
            ;;
        2)
            source bin/direnum
            ;;
	3)
	    source bin/zone
	    ;;
	4)
	    source bin/clickjacking
	    ;;
	5)
	    source bin/netenum
	    ;;
        *)
            echo "Invalid option"
            ;;
    esac
done

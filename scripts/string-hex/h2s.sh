#read -r -p "enter text: " var
#echo "you're output :"
#printf '%s' "$var" | tr -d ' \n' | xxd -r -p

printf "enter hex (use ctrl-D when done):\n"
tr -d ' \n' | xxd -r -p

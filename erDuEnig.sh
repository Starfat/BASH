read -p "Er du enig? "
case $REPLY in
j|J|y|Y)
    echo "Bra!"
    ;;
n | N)
    echo "Hva!?!?"
    ;;
*)
    echo "Skjerp deg!" >&2
    ;;
esac

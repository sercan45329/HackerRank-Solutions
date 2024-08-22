read -n 1 char

if [ "$char" = 'Y' ] || [ "$char" = 'y' ]; then
    echo "YES"
else
    echo "NO"
fi

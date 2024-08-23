while IFS= read -r line; do
    echo "$line" | cut -c 3
done
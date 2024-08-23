while IFS= read -r line; do
    firstchar=$(echo "$line" | cut -c 2)
    secondchar=$(echo "$line" | cut -c 7)
    echo "$firstchar$secondchar"
done

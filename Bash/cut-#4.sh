while IFS= read -r line; do
 word=$(echo "$line" | cut -c 1-4)
 echo "$word"
done

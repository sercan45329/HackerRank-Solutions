while IFS= read -r line; do
 word=$(echo "$line" | cut -c 2-7)
 echo "$word"
done

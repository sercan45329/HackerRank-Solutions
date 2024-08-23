while IFS= read -r line; do
    #cut uses tab delimiter when delimiter is not defined
    echo "$line" | cut -f1-3
done

read n
sum=0

for ((i=1; i<=n; i++))
do
    read value
    sum=$((sum + value))
done
result=$(echo "$sum / $n" | bc -l)
printf "%.3f\n" $result

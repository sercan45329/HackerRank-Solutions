read exp
result=$(awk "BEGIN {printf \"%.3f\", $exp}")
echo $result

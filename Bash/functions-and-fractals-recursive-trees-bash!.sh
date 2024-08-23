read n
declare -A matrix
rows=63
cols=100

draw_fractal_tree(){
    local n=$1
    local x=$2
    local y=$3
    local count=$4
    
    if (($n == 0)); then
      return 0 
    fi
    
    for ((i=0; i<count+1;i++)); do
      matrix["$((y - i)),$x"]="1"
    done
    
    local xl=$((x - 1))
    local xr=$((x + 1))
    
    for ((i=count+1; i<=count*2; i++)); do
        matrix["$((y - i)),$xl"]="1"
        matrix["$((y - i)),$xr"]="1"
        xl=$((xl - 1))
        xr=$((xr + 1))
    done
    xl=$((xl + 1))
    xr=$((xr - 1))
    y=$((y-(count*2)))
    n=$((n - 1))
    count=$(((count / 2)))
    
    draw_fractal_tree $n $xl $y $count
    draw_fractal_tree $n $xr $y $count
    
}

for ((i=0; i<rows; i++)); do
  for ((j=0; j<cols; j++)); do
    matrix["$i,$j"]="_"
  done
done

draw_fractal_tree $n 49 63 16

for ((i=0; i<rows; i++)); do
  for ((j=0; j<cols; j++)); do
    echo -n "${matrix["$i,$j"]}"
  done
  echo
done


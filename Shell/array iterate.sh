function iterate 
{
  #array=("$@")
  len=${#array[@]}
  for (( i=0 ; i<len; i++ ))
  do
    echo ${array[$i]}
  done
}

array=(1 2 3)
iterate ${array[@]}

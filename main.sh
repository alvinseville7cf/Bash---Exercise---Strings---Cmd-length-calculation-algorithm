function getLength()
{
  local string=$1
  local -i length=0
  local -i j=0

  for i in 4096 2048 1024 512 256 128 64 32 16 8 4 2 1
  do
    ((j=i - 1))
    if [[ -n ${string:j:1} ]]
    then
      string=${string:i}
      ((length+=i))
    fi
  done
  echo $length
}

for i in "" a ab abc
do
  echo "'$i' length is $(getLength $i)"
done

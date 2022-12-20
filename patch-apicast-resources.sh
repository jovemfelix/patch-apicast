F=apicast.txt
while read line; do
  if [ ! -z "$line" ]
  then
      IFS=' '
      read -a strarr <<< "$line"
#cat <<EOF
#---
oc -n ${strarr[0]} patch apicast/${strarr[1]} -p "spec:
  resources:
    limits:
      cpu: '1'
      memory: 256Mi
    requests:
      cpu: 500m
      memory: 128Mi
  " --type=merge
#EOF
  fi
done < $F

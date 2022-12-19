F=apicast.txt
while read line; do
  if [ ! -z "$line" ]
  then
      IFS=' '
      read -a strarr <<< "$line"

      servicesFilterByURL=$(echo "${strarr[2]}" | cut -d '.' -f2-)

      oc -n ${strarr[0]} patch apicast/${strarr[1]} -p "spec:
        servicesFilterByURL: \".*.${servicesFilterByURL}\"" --type=merge
  fi
done < $F

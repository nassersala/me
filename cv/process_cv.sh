
while read -r; do
  echo "$REPLY";
done < <(yq '.[]' CV.yml)


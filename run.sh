source $FUNCTION
local check_id=$(storm "r17rYI0tYD6Cp9fQN5zvaVntdMysT5erOIfuNZlrN8mJXMlQXcHtdW0PN1yC2cbCeI4uR==")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
  echo ""
  echo " kamu vip "
  echo ""
else
  echo ""
  echo " Kontol kau gede, minimal beli dek "
  echo ""
fi

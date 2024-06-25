source $FUNCTION
local check_id=$(storm "https://henbz10real.github.io/HendiPratama/id.txt")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
  echo " kamu vip "
else
  echo " kamu bukan vip "
fi


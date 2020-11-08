#/bin/sh

number=$(checkupdates | wc -l)
output=$(checkupdates)

if (( $number > 20 ))
then
    tooltip="$(echo "$output" | head -n 20 | sed -z 's/\n/\\n/g')"
    tooltip+='...'
else
    tooltip="$(echo "$output" | sed -z 's/\n/\\n/g')"
    tooltip=${tooltip::-2}
fi

if (( $number > 0 ))
then
    class="need-update"
else
    class="no-update"
fi

echo -e "{\"class\":\"$class\",\"percentage\":$number,\"tooltip\":\"${number}\"}"

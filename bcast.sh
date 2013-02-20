#!/bin/bash

# Dependencies:
#	curl
#	python's json.tool

source ./config
source ./support.inc

if ! [[ -f "${1}" ]]; then
	echo "File \"${1}\" does not exist."
	print_usage
	exit 1
fi

echo "Message:"
BCAST_MSG=$(cat)
echo ""

echo -e "Broadcast to lists ${@}:\n${BCAST_MSG}\n"
echo -n "Does everything look alright? (y/N) "
read confirm
if [[ ${confirm} == "y" ]]; then
	echo "Aight, sending!"
	bcast_text "$(read_nums ${@})" "${BCAST_MSG}"
fi
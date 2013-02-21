#!/bin/bash

# Usage: read_nums <filenames>
# Returns: converts one-number-per-line to a single comma-separated line
function read_nums {
	cat "${@}" | cut -d '#' -f 1 | uniq | xargs | tr -s ' ' ,
}

# Usage: json_xpnd <crappy-json-that-could-be-one-line>
# Returns: <nice-newline-delimited-json>
# Dependencies:
#	python's json.tool
function json_xpnd {
	echo "${1}" | python -mjson.tool
}

# Usage: json_xtr <nice-newline-delimited-json> <key>
# Returns: <value-for-key>
function json_xtr {
	echo "${1}" | grep "${2}" | cut -d ':' -f 2 | tr -d ', "'
}

# Usage: single_text +6590000000 "Message here"
# Dependencies:
#	curl
function single_text {
	HOI_RESPONSE=$(curl -# https://secure.hoiio.com/open/sms/send \
		-d "app_id=${HOI_APPID}" \
		-d "access_token=${HOI_TOKEN}" \
		-d "dest=${1}" \
		-d "sender_name=${HOI_SENDER}" \
		-d "msg=${2}" \
		)
	HOI_RESPONSE=$(json_xpnd "${HOI_RESPONSE}")
	QSTATUS=$(json_xtr "${HOI_RESPONSE}" status)
	TXN_REF=$(json_xtr "${HOI_RESPONSE}" txn_ref)
	echo "Status: ${QSTATUS}"
}

# Usage: bcast_text +6590000000,+6590000001 "Message here"
# Dependencies:
#	curl
function bcast_text {
	HOI_RESPONSE=$(curl -# https://secure.hoiio.com/open/sms/bulk_send \
		-d "app_id=${HOI_APPID}" \
		-d "access_token=${HOI_TOKEN}" \
		-d "dest=${1}" \
		-d "sender_name=${HOI_SENDER}" \
		-d "msg=${2}" \
		)
	HOI_RESPONSE=$(json_xpnd "${HOI_RESPONSE}")
	QSTATUS=$(json_xtr "${HOI_RESPONSE}" status)
	B_TXN_REF=$(json_xtr "${HOI_RESPONSE}" bulk_txn_ref)
	echo "Status: ${QSTATUS}"
}

function print_usage {
	echo "Usage: bcast.sh <files>"
}

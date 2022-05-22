#!/bin/sh

for _ARG in "$@"; do
	case $_ARG in
	-t=*)
		_FUTURE_DATE_TIME="${_ARG#*=}"
		_FORMAT=$_CONF_TIME_FORMAT
		;;
	-ts=*)
		_FUTURE_DATE_TIME="${_ARG#*=}"
		_FORMAT=$_CONF_TIME_SECONDS_FORMAT
		;;
	-dt=*)
		_FUTURE_DATE_TIME="${_ARG#*=}"
		_FORMAT=$_CONF_DATE_FORMAT
		;;
	-f=*)
		_FILE="${_ARG#*=}"

		if [ ! -e $_FILE ]; then
			_exitWithError "$_FILE does not exist"
		fi
		;;
	-l=*)
		_LABEL="${_ARG#*=}"
		;;
	-e=*)
		_EVERY=${_ARG#*=}
		;;
	esac
done

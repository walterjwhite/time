#!/bin/sh

if [ -n "$_EVERY" ]; then
	while [ $_RUNNING -eq 1 ]; do
		sleep $_EVERY

		_SLEEP_STATUS=$?
		if [ $_SLEEP_STATUS -gt 0 ]; then
			_exit_with_error "Interrupted" $_SLEEP_STATUS
		fi

		$_FILE
	done
fi

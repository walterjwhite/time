if [ $_DELAY -lt 0 ]; then
	_warn "$_DELAY is < 0 (in the past)." 1
else
	_info "Sleeping $_DELAY"
	sleep $_DELAY
fi

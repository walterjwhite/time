#!/bin/sh

. _LIBRARY_PATH_/console/file.sh

if [ $USER = "root" ]; then
	_exitWithError "Not installing jobs as root" 1
fi

_time_install() {
	local _source_filename=$(basename $1)

	_require_file "$1"

	local _target_path=$_APPLICATION_DATA_PATH/$_TARGET_APPLICATION_NAME

	mkdir -p $_target_path

	local _target_job_filename=$_target_path/$_source_filename

	# kill any running processes with that particular job
	if [ -e $_target_job_filename ]; then
		_warn "Killing any existing processes for $_target_job_filename"
		killall $_source_filename
	fi

	cp $1 $_target_job_filename

	# start new process
	$_target_job_filename &
	>/dev/null 2>&1

	_info "Started $_source_filename $!"
}

# TODO: name this differently so as not to conflict with official "at" cmd
_require "$_FUTURE_DATE_TIME" _FUTURE_DATE_TIME 1
_require "$_FILE" _FILE 1
_require "$_FORMAT" _FORMAT 1

_CURRENT_EPOCH=$(date +%s)
_TARGET_EPOCH=$(date $_CONF_DATE_OPTIONS $_FORMAT "$_FUTURE_DATE_TIME" +%s)
_DELAY=$(($_TARGET_EPOCH - $_CURRENT_EPOCH))

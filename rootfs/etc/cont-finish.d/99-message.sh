#!/usr/bin/env bashio
# ==============================================================================
# Container Base
# Displays an message right before terminating in case something went wrong
# ==============================================================================
if [[ "${S6_STAGE2_EXITED}" -ne 0 ]]; then
    bashio::log.red \
        '-----------------------------------------------------------'
    bashio::log.red '                Oops! Something went wrong.'
    bashio::log.red
    bashio::log.red ' Sorry, but something went wrong when'
    bashio::log.red ' starting or running this container.'
    bashio::log.red ' '
    bashio::log.red ' Be sure to check the log above, line by line, for hints.'
    bashio::log.red \
        '-----------------------------------------------------------'
fi

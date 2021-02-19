#!/usr/bin/with-contenv bashio
# ==============================================================================
# Container Base
# Displays a simple banner on startup
# ==============================================================================
if bashio::supervisor.ping; then
    bashio::log.blue \
        '-----------------------------------------------------------'
    bashio::log.blue " Container Base"
    bashio::log.blue " Base image for containers"
    bashio::log.blue \
        '-----------------------------------------------------------'

    bashio::log.blue " System: $(bashio::info.operating_system)" \
        " ($(bashio::info.arch) / $(bashio::info.machine))"

    bashio::log.blue \
        '-----------------------------------------------------------'
    bashio::log.blue \
        ' Please share the above information when looking for help'
    bashio::log.blue \
        ' or support.'
    bashio::log.blue \
        '-----------------------------------------------------------'
fi

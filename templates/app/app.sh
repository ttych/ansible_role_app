#!/bin/sh

start()
{
    start_f &
}

start_f()
{
    sleep 600
}

stop()
{
    :
}

case $1 in
    start|start_f|stop)
        shift
        $1 "$@"
        ;;
    *)
        echo >&2 "unsupported \"$1\" action"
        ;;
esac

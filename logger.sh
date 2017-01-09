#!/bin/bash
# Modified from "http://www.cubicrace.com/2016/03/efficient-logging-mechnism-in-shell.html"
# Created by Brice 'BNedry' Theurillat

LOG_FILE=$1
CMD='LOG ${FUNCNAME} $@'
touch $LOG_FILE

function LOG(){
    level=$1
    set -- "${@:2}"
    args=($@)
    echo "[$(date +"%F %T")] [${level}] ${args[@]}" >> ${LOG_FILE}
}

function INFO(){
    eval $CMD
}

function DEBUG(){
    eval $CMD
}

function ERROR(){
    eval $CMD
}

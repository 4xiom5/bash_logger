#!/bin/bash
# Modified from "http://www.cubicrace.com/2016/03/efficient-logging-mechnism-in-shell.html"
# Created by Brice 'BNedry' Theurillat

LOG_FILE=$1
CMD='LOG ${FUNCNAME} $@'
touch $LOG_FILE

function LOG(){
    args=($@)
    echo "[$(date +"%F %T")] [${1}] ${args[@]:1}" >> ${LOG_FILE}
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

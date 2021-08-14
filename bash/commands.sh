#!/bin/bash

function search() {
    grep -rl $1 $2
}

function isearch() {
    grep -ril $1 $2
}

#!/bin/bash
uid=$1
username=$(id -un -- "$uid")
echo $username

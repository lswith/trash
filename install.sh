#!/bin/bash

swiftc trash.swift -o trash-file
cp trash-file /usr/local/bin/trash-file
cp trash.sh /usr/local/bin/trash

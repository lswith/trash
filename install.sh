#!/bin/bash

swiftc trash.swift -o trash-file
sudo cp trash-file /usr/local/bin/trash-file
sudo cp trash.sh /usr/local/bin/trash

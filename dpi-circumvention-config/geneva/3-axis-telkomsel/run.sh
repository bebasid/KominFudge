#!/bin/sh
python3 engine.py --server-port 80,443 --strategy "[TCP🎏PA]-fragment{tcp:8:True}(,fragment{tcp:4:True})-|" --log debug

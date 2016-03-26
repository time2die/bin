#!/bin/bash
docker run -d -p 9050:9050 -p 9051:9051 -e PASSWORD=time2doecker andreas4all/tor-client:latest
curl --socks5-hostname localhost:9050 https://api.ipify.org?format=json

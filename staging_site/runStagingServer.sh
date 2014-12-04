#!/bin/bash
sudo forever --killSignal=SIGINT start -w staging_web.js

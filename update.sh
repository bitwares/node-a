#!/bin/bash
forever stop app.js
git fetch && git merge
TOP=true forever start app.js --config config.devnet.json --genesis genesisBlock.devnet.json
tail -f ./logs/sth.log
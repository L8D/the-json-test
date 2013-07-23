#!/usr/bin/env coffee
fs = require 'fs'
data = JSON.parse fs.readFileSync 'data.json', 'utf8'

console.log "#{player.name} is level #{player.level}" for player in data.players

fs.writeFile 'data.json', JSON.stringify(data, null, 2), ((err) -> console.log err if err)

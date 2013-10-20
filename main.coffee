#!/usr/bin/env coffee
fs = require 'fs'

fs.readFileSync 'data.json', 'utf8', (err, data) ->
  if err throw err
  for player in JSON.parse data.players
    console.log "#{player.name} is level #{player.level}"

  fs.writeFile 'data.json', JSON.stringify(data, null, 2), (err) -> throw err if err

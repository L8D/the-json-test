#!/usr/bin/env coffee
fs = require 'fs'

fs.readFile 'data.json', encoding: 'utf-8', (err, data) ->
  throw err if err
  data = JSON.parse data

  for player in data.players
    console.log "#{player.name} is level #{player.level}"

  fs.writeFile 'data.json', JSON.stringify(data, null, 2) + '\n', (err) -> throw err if err

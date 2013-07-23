#!/usr/bin/env ruby
require 'json'

config_file = open 'data.json', 'r+'
player_data = JSON.parse config_file.read, symbolize_names: true

player_data[:players].each do |player|
  puts "#{player[:name]} is level #{player[:level]}"
end

config_file.rewind
config_file.write JSON.pretty_generate player_data

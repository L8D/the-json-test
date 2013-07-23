#!/usr/bin/env python3
import json
config_file = open("data.json", 'r+', encoding="utf-8")
data = json.loads(config_file.read())

for player in data['players']:
  print(player['name'] + " is level " + str(player['level']))

gen_data = json.dumps(data, indent=2, separators=(',', ': '))

config_file.seek(0)
config_file.write(gen_data)

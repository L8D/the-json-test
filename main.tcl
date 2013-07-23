#!/usr/bin/env tclsh
package require json

set config_file [open "data.json"]
set data [json::json2dict [read $config_file]]

foreach {player} [dict get $data players] {
  set name [dict get $player name]
  set level [dict get $player level]
  puts "$name is level $level"
}

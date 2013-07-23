package main

import (
  "fmt"
  "encoding/json"
  "os"
  "log"
)


type GData struct {
  Players []struct {
    Name string
    Level int
    Inventory []struct {
      Type, Name string
    }
  }
}


func main() {
  configFile, err := os.OpenFile("data.json", 2, 0666)
  if err != nil { log.Fatal(err) }

  var data GData
  err = json.NewDecoder(configFile).Decode(&data)
  if err != nil { log.Fatal(err) }

  for i := 0; i < len(data.Players); i++ {
    player := data.Players[i]
    fmt.Printf("%s is level %d\n", player.Name, player.Level)
  }

/* uncomment for the re-write code. But if you do, go will cammel case all the values thus causing the other scripts to brake.
 *  gen_data, err := json.MarshalIndent(data, "", "  ")
 *  if err != nil { log.Fatal(err) }
 *
 *  _, err = configFile.Seek(0, 0)
 *  if err != nil { log.Fatal(err) }
 *
 *  _, err = configFile.Write(gen_data)
 *  if err != nil { log.Fatal(err) }
 *
 *  configFile.WriteString("\n")
 *  configFile.Close()
 */
}

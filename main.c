#include <stdio.h>
#include "lib/parson.c"

int main() {
  JSON_Value *data = json_parse_file("data.json");
  JSON_Array *players = json_object_get_array(json_value_get_object(data), "players");
  JSON_Object *player;

  for(size_t i = 0; i < json_array_get_count(players); i++) {
    player = json_array_get_object(players, i);

    printf("%s is level %.0f\n",
        json_object_get_string(player, "name"),
        json_object_get_number(player, "level")
        );
  }

  return 0;
}

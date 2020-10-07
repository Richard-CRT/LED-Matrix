#ifndef MODE_SNAKE_H
#define MODE_SNAKE_H

#include "globals.h"

#define SNAKE_MAX_LENGTH ((MATRIX_WIDTH-2) * (MATRIX_HEIGHT-2))

enum class snake_direction_t { up, down, right, left };
enum class snake_difficulty_t { easy = 3, medium = 2, hard = 1, insane = 0, unknown = 4 };

typedef struct {
  uint8_t x;
  uint8_t y;
  bool snake;
} snake_grid_cell_t;

typedef struct {
  uint8_t position;
  snake_direction_t direction;
  snake_difficulty_t difficulty;
  uint32_t last_tick_millis;
} snake_difficulty_snake_t;

#endif

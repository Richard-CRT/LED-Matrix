#define SNAKE_MAX_LENGTH ((MATRIX_WIDTH-2) * (MATRIX_HEIGHT-2))

typedef struct {
  uint8_t x;
  uint8_t y;
  bool snake;
} snake_grid_cell_t;

void mode_snake()
{
  while (true)
  {
    setAllLeds(CRGB::Black);
    setBorderLeds(CRGB::Blue);
    
    snake_grid_cell_t grid[MATRIX_HEIGHT-2][MATRIX_WIDTH-2];
    for (uint8_t y = 0; y < MATRIX_HEIGHT-2; y++)
    {
      for (uint8_t x = 0; x < MATRIX_WIDTH-2; x++)
      {
        grid[y][x].x = x;
        grid[y][x].y = y;
        grid[y][x].snake = false;
      }
    }
    
    snake_grid_cell_t * snake_cells[SNAKE_MAX_LENGTH];
    for (uint16_t i = 0; i < SNAKE_MAX_LENGTH; i++)
    {
      snake_cells[i] = NULL;
    }
    enum class snake_direction_t { up, down, right, left };
  
    uint16_t snake_length = 3;
    snake_cells[0] = &grid[9][9];
    snake_cells[1] = &grid[9][8];
    snake_cells[2] = &grid[9][7];
    for (uint16_t i = 0; i < snake_length; i++)
    {
        snake_cells[i]->snake = true;
        uint8_t snake_grid_x = snake_cells[i]->x;
        uint8_t snake_grid_y = snake_cells[i]->y;
        leds[((snake_grid_y+1)*MATRIX_WIDTH) + snake_grid_x + 1] = CRGB::White;
    }
    
    snake_direction_t new_snake_direction = snake_direction_t::right;
    snake_direction_t snake_direction = new_snake_direction;

    snake_grid_cell_t * apple_cell;
    apple_cell = &grid[14][14];
    leds[((apple_cell->y+1)*MATRIX_WIDTH) + apple_cell->x + 1] = CRGB::Green;

    bool ate_apple_last_tick = false;

    uint32_t lastTickMillis = 0;
    bool failed = false;
    bool won = false;
    while (!failed && !won)
    {
      uint32_t currentMillis = millis();
      if (currentMillis - lastTickMillis > 150)
      {
        lastTickMillis = currentMillis;

        snake_direction = new_snake_direction;

        if (ate_apple_last_tick)
        {
          // Increment length of snake
          ate_apple_last_tick = false;
          snake_length++;

          // Check if player has reached max length
          if (snake_length == SNAKE_MAX_LENGTH)
            won = true;
        }
        else
        {
          // Delete the end of the snake as it is about to be shuffled out
          snake_cells[snake_length-1]->snake = false;
          uint8_t end_snake_grid_x = snake_cells[snake_length-1]->x;
          uint8_t end_snake_grid_y = snake_cells[snake_length-1]->y;
          leds[((end_snake_grid_y+1)*MATRIX_WIDTH) + end_snake_grid_x + 1] = CRGB::Black;
          snake_cells[snake_length-1] = NULL;
        }

        if (!won)
        {
          uint8_t start_snake_grid_x = snake_cells[0]->x;
          uint8_t start_snake_grid_y = snake_cells[0]->y;

          // Shuffle length of snake back 1
          for (uint16_t i = snake_length-1; i > 0; i--)
          {
            snake_cells[i] = snake_cells[i-1];
          }

          // Check new snake position and if failed
          switch (snake_direction)
          {
            case snake_direction_t::right:
              if (start_snake_grid_x == MATRIX_WIDTH-2-1 || grid[start_snake_grid_y][start_snake_grid_x + 1].snake)
                failed = true;
              else
                start_snake_grid_x++;
              break;
            case snake_direction_t::left:
              if (start_snake_grid_x == 0 || grid[start_snake_grid_y][start_snake_grid_x - 1].snake)
                failed = true;
              else
                start_snake_grid_x--;
              break;
            case snake_direction_t::up:
              if (start_snake_grid_y == MATRIX_HEIGHT-2-1 || grid[start_snake_grid_y + 1][start_snake_grid_x].snake)
                failed = true;
              else
                start_snake_grid_y++;
              break;
            case snake_direction_t::down:
              if (start_snake_grid_y == 0 || grid[start_snake_grid_y - 1][start_snake_grid_x].snake)
                failed = true;
              else
                start_snake_grid_y--;
              break;
          }

          // Assign new start of snake
          snake_cells[0] = &grid[start_snake_grid_y][start_snake_grid_x];
          snake_cells[0]->snake = true;

          // Render snake
          //leds[((start_snake_grid_y+1)*MATRIX_WIDTH) + start_snake_grid_x + 1] = CRGB::White;
          for (uint16_t i = 0; i < snake_length; i++)
          {
              float snake_percentage = (float)i / (snake_length-1);
              uint8_t brightness = (1 - (snake_percentage * 0.9)) * 255;
              
              uint8_t snake_grid_x = snake_cells[i]->x;
              uint8_t snake_grid_y = snake_cells[i]->y;
              leds[((snake_grid_y+1)*MATRIX_WIDTH) + snake_grid_x + 1] = CRGB(brightness, brightness, brightness);
          }

          // Check if eaten an apple
          if (start_snake_grid_y == apple_cell->y && start_snake_grid_x == apple_cell->x)
          {
            // Generate new apple
            ate_apple_last_tick = true;

            uint16_t random_location = random(SNAKE_MAX_LENGTH - snake_length);
            int16_t count = -1;
            bool found_apple_location = false;
            for (uint8_t y = 0; y < MATRIX_HEIGHT-2; y++)
            {
              for (uint8_t x = 0; x < MATRIX_WIDTH-2; x++)
              {
                if (!grid[y][x].snake)
                {
                  count++;
                  if (count == random_location)
                  {
                    apple_cell = &grid[y][x];
                    found_apple_location = true;
                    break;
                  }
                }
              }
              if (found_apple_location)
                break;
            }
            
            leds[((apple_cell->y+1)*MATRIX_WIDTH) + apple_cell->x + 1] = CRGB::Green;
          }
          
          FastLED.show();
          delay(5);
        }
      }
      
      uint16_t buttonCode;
      while (poll_ir_remote_buttons(buttonCode))
      {
        switch (buttonCode)
        {
          case IR_REMOTE_BUTTON_CODE_LEFT_CLICK:
          case IR_REMOTE_BUTTON_CODE_LEFT_HOLD:
            if (snake_direction != snake_direction_t::right)
              new_snake_direction = snake_direction_t::left;
            break;
          case IR_REMOTE_BUTTON_CODE_RIGHT_CLICK:
          case IR_REMOTE_BUTTON_CODE_RIGHT_HOLD:
            if (snake_direction != snake_direction_t::left)
              new_snake_direction = snake_direction_t::right;
            break;
          case IR_REMOTE_BUTTON_CODE_UP_CLICK:
          case IR_REMOTE_BUTTON_CODE_UP_HOLD:
            if (snake_direction != snake_direction_t::down)
              new_snake_direction = snake_direction_t::up;
            break;
          case IR_REMOTE_BUTTON_CODE_DOWN_CLICK:
          case IR_REMOTE_BUTTON_CODE_DOWN_HOLD:
            if (snake_direction != snake_direction_t::up)
              new_snake_direction = snake_direction_t::down;
            break;
        }
      }
    }
  }
}

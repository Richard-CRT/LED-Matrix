#include "mode_snake.h"

void snake_set_difficulty_border_leds(snake_difficulty_t snake_difficulty, CRGB colour)
{
  uint8_t difficulty = static_cast<uint8_t>(snake_difficulty);
  if (difficulty >= 0 && difficulty <= 3)
  {
    uint8_t bottomLeftY = 1 + (difficulty * 5);
    leds[((bottomLeftY+1)*MATRIX_WIDTH) + 2] = colour;
    leds[((bottomLeftY+1)*MATRIX_WIDTH) + 17] = colour;
    for (uint8_t x = 2; x <= 17; x++)
    {
      leds[(bottomLeftY*MATRIX_WIDTH) + x] = colour;
      leds[((bottomLeftY+2)*MATRIX_WIDTH) + x] = colour;
    }
  }
}

snake_difficulty_t snake_difficulty_selection(snake_difficulty_t snake_difficulty_default)
{
  setAllLeds(CRGB::Black);
  setBorderLeds(CRGB::Blue);

  snake_difficulty_t snake_difficulty = snake_difficulty_default;
  snake_difficulty_t chosen_snake_difficulty = snake_difficulty_t::unknown;

  while (chosen_snake_difficulty == snake_difficulty_t::unknown)
  {
    snake_set_difficulty_border_leds(snake_difficulty_t::easy, CRGB::Red);
    snake_set_difficulty_border_leds(snake_difficulty_t::medium, CRGB::Red);
    snake_set_difficulty_border_leds(snake_difficulty_t::hard, CRGB::Red);
    snake_set_difficulty_border_leds(snake_difficulty_t::insane, CRGB::Red);
        
    snake_set_difficulty_border_leds(snake_difficulty, CRGB::Green);
    Render();
    
    uint16_t buttonCode;
    while (poll_ir_remote_buttons(buttonCode))
    {
      switch (buttonCode)
      {
        case IR_REMOTE_BUTTON_CODE_OK_CLICK:
          chosen_snake_difficulty = snake_difficulty;
          break;
        case IR_REMOTE_BUTTON_CODE_UP_CLICK:
          switch (snake_difficulty)
          {
            case snake_difficulty_t::medium:
              snake_difficulty = snake_difficulty_t::easy;
              break;
            case snake_difficulty_t::hard:
              snake_difficulty = snake_difficulty_t::medium;
              break;
            case snake_difficulty_t::insane:
              snake_difficulty = snake_difficulty_t::hard;
              break;
          }
          break;
        case IR_REMOTE_BUTTON_CODE_DOWN_CLICK:
          switch (snake_difficulty)
          {
            case snake_difficulty_t::easy:
              snake_difficulty = snake_difficulty_t::medium;
              break;
            case snake_difficulty_t::medium:
              snake_difficulty = snake_difficulty_t::hard;
              break;
            case snake_difficulty_t::hard:
              snake_difficulty = snake_difficulty_t::insane;
              break;
          }
          break;
      }
    }
  }

  return chosen_snake_difficulty;
}

void snake_flash_failure()
{
  for (uint8_t i; i < 3; i++)
  {
  setBorderLeds(CRGB::Red);
  Render();
  delay(100);
  setBorderLeds(CRGB::Blue);
  Render();
  delay(100);
  }
}

void snake_flash_success()
{
  for (uint8_t i; i < 3; i++)
  {
  setBorderLeds(CRGB::Green);
  Render();
  delay(100);
  setBorderLeds(CRGB::Blue);
  Render();
  delay(100);
  }
}

void snake_main_game(snake_difficulty_t snake_difficulty)
{  
  setAllLeds(CRGB::Black);
  setBorderLeds(CRGB::Blue);

  uint8_t millisecondsDelayBetweenTick = 150;
  switch (snake_difficulty)
  {
    case snake_difficulty_t::easy:
      millisecondsDelayBetweenTick = 200;
      break;
    case snake_difficulty_t::medium:
      millisecondsDelayBetweenTick = 150;
      break;
    case snake_difficulty_t::hard:
      millisecondsDelayBetweenTick = 100;
      break;
    case snake_difficulty_t::insane:
      millisecondsDelayBetweenTick = 50;
      break;
  }
  
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

  uint16_t snake_length = 3;
  snake_cells[0] = &grid[9][3];
  snake_cells[1] = &grid[9][2];
  snake_cells[2] = &grid[9][1];
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

  uint32_t lastTickMillis = millis();
  bool failed = false;
  bool won = false;
  while (!failed && !won)
  {
    uint32_t currentMillis = millis();
    if (currentMillis - lastTickMillis > millisecondsDelayBetweenTick)
    {
      lastTickMillis = currentMillis;

      snake_direction = new_snake_direction;

      snake_grid_cell_t * end_snake_grid_cell = NULL;
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
        // Save the end of the snake as it is about to be shuffled out
        end_snake_grid_cell = snake_cells[snake_length-1];
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

        if (!failed)
        {
          // Delete end of snake
          if (end_snake_grid_cell != NULL)
          {
            // end_snake_grid_cell shouldn't be NULL when we ate an apple last tick
            
            end_snake_grid_cell->snake = false;
            uint8_t end_snake_grid_x = end_snake_grid_cell->x;
            uint8_t end_snake_grid_y = end_snake_grid_cell->y;
            leds[((end_snake_grid_y+1)*MATRIX_WIDTH) + end_snake_grid_x + 1] = CRGB::Black;
          }
          
          // Assign new start of snake
          snake_cells[0] = &grid[start_snake_grid_y][start_snake_grid_x];
          snake_cells[0]->snake = true;
  
          // Render snake
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
          
          Render();
        }
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

  if (failed)
    snake_flash_failure();
  else if (won)
    snake_flash_success();
  empty_ir_remote_queue();
}

void mode_snake()
{
  snake_difficulty_t snake_difficulty = snake_difficulty_t::medium;
  while (true)
  {
    snake_difficulty = snake_difficulty_selection(snake_difficulty);
    snake_main_game(snake_difficulty);
  }
}

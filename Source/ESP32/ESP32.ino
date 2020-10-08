#include "globals.h"
#include "brightness.h"
#include "mode_snake.h"

void Render()
{
  FastLED.show();
  delay(5);
}

void setAllLeds(CRGB colour)
{
  for (uint16_t i = 0; i < NUM_LEDS; i++)
  {
    leds[i] = colour;
  }
}

void setBorderLeds(CRGB colour)
{
  for (unsigned short x = 0; x < MATRIX_WIDTH; x++)
  {
    leds[x] = colour;
    leds[((MATRIX_HEIGHT-1)*MATRIX_WIDTH) + x] = colour;
  }
  for (unsigned short y = 0; y < MATRIX_HEIGHT; y++)
  {
    leds[y*MATRIX_WIDTH] = colour;
    leds[(y*MATRIX_WIDTH) + MATRIX_WIDTH - 1] = colour;
  }
}

void setup() {
  pinMode(LED_DATA_PIN, OUTPUT);
  digitalWrite(LED_DATA_PIN, LOW);
  
  #if defined(SERIAL_DEBUG) && SERIAL_DEBUG == 1
    Serial.begin(115200);
    Serial.println(F("Opened Serial Link"));
  #endif
  
  #if defined(SERIAL_DEBUG) && SERIAL_DEBUG == 1
    Serial.println(F("Setting Up FastLED, turning off LEDs, and setting up default brightness"));
  #endif
  FastLED.addLeds<WS2812B, LED_DATA_PIN, GRB>(leds, NUM_LEDS);
  setAllLeds(CRGB::Black);
  setBrightnessPercentage(DEFAULT_BRIGHTNESS_PERC);
  Render();
  
  #if defined(SERIAL_DEBUG) && SERIAL_DEBUG == 1
    Serial.println(F("Enabling IR In"));
  #endif
  IrReceiver.enableIRIn();  // Start the receiver
  #if defined(SERIAL_DEBUG) && SERIAL_DEBUG == 1
    Serial.print(F("Ready to receive IR signals at pin "));
    Serial.println(IR_RECEIVE_PIN);
  #endif
}

void loop() {
  switch (matrixMode)
  {
    case MatrixMode_t::blank:
      mode_blank();
      break;
    case MatrixMode_t::hue:
      mode_hue();
      break;
    case MatrixMode_t::snake:
      mode_snake();
      break;
  }
}

#include "FastLED.h"

// How many leds in your strip?
#define MATRIX_WIDTH 20
#define MATRIX_HEIGHT 20
#define NUM_LEDS (MATRIX_WIDTH * MATRIX_HEIGHT)

#define LED_DATA_PIN 2

// Define the array of leds
CRGB leds[NUM_LEDS];

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
  
  FastLED.addLeds<WS2812B, LED_DATA_PIN, GRB>(leds, NUM_LEDS);
  setAllLeds(CRGB::Red);
  FastLED.setBrightness(255);
  FastLED.show();
}

void loop() {
  mode_hue();
}

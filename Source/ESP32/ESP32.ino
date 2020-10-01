#include "FastLED.h"

// How many leds in your strip?
#define MATRIX_WIDTH 20
#define MATRIX_HEIGHT 20
#define NUM_LEDS (MATRIX_WIDTH * MATRIX_HEIGHT)

#define LED_DATA_PIN 22

// Define the array of leds
CRGB leds[NUM_LEDS];

void setAllLeds(CRGB colour)
{
  for (uint16_t i = 0; i < NUM_LEDS; i++)
  {
    leds[i] = colour;
  }
}

void setup() {
  FastLED.addLeds<WS2812B, LED_DATA_PIN, GRB>(leds, NUM_LEDS);
  setAllLeds(CRGB::Red);
  FastLED.setBrightness(255);
  FastLED.show();
}

void loop() {
  // put your main code here, to run repeatedly:
  FastLED.show();
}

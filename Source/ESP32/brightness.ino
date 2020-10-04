#include "brightness.h"

#include "globals.h"

void setBrightnessPercentage(int8_t newBrightnessPercentage)
{
  if (newBrightnessPercentage < MIN_BRIGHTNESS_PERC)
    newBrightnessPercentage = MIN_BRIGHTNESS_PERC;
  if (newBrightnessPercentage > MAX_BRIGHTNESS_PERC)
    newBrightnessPercentage = MAX_BRIGHTNESS_PERC;

  currentBrightnessPercentage = newBrightnessPercentage;
  FastLED.setBrightness((newBrightnessPercentage / (double)100) * 255);
}

void cycleBrightness()
{
  int8_t newBrightnessPercentage = currentBrightnessPercentage + BRIGHTNESS_PERC_INC;
  if (newBrightnessPercentage > MAX_BRIGHTNESS_PERC)
  {
    newBrightnessPercentage = MIN_BRIGHTNESS_PERC;
  }

  setBrightnessPercentage(newBrightnessPercentage);
}

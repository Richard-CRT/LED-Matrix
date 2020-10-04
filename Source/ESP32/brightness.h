#ifndef BRIGHTNESS_H
#define BRIGHTNESS_H

#define DEFAULT_BRIGHTNESS_PERC 30
#define MIN_BRIGHTNESS_PERC 10
#define BRIGHTNESS_PERC_INC 10
#define MAX_BRIGHTNESS_PERC 100

int8_t currentBrightnessPercentage = DEFAULT_BRIGHTNESS_PERC;

void setBrightnessPercentage(int8_t newBrightnessPercentage);
void cycleBrightness();

#endif
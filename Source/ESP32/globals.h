#ifndef GLOBALS_H
#define GLOBALS_H

#define SERIAL_DEBUG 1

// How many leds in your strip?
#define MATRIX_WIDTH 20
#define MATRIX_HEIGHT 20
#define NUM_LEDS (MATRIX_WIDTH * MATRIX_HEIGHT)

#include "pin_definitions.h"
#include "ir_remote_codes.h"

#include <IRremote.h>
#include <FastLED.h>

IRrecv IrReceiver(IR_RECEIVE_PIN);
CRGB leds[NUM_LEDS];

enum class MatrixMode_t { blank, hue, snake, audio };

MatrixMode_t matrixMode = MatrixMode_t::audio;

#endif

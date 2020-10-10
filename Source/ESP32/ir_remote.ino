#include "globals.h"
#include "brightness.h"

void empty_ir_remote_queue()
{
    uint16_t buttonCode;
    while (poll_ir_remote_buttons(buttonCode))
    {
    }
}

bool poll_ir_remote_buttons(uint16_t & buttonCode)
{
  if (IrReceiver.decode()) {
    if (IrReceiver.results.decode_type == NEC && (IrReceiver.results.value & 0xFFFF0000) == 0x57430000)
    {
      buttonCode = IrReceiver.results.value & 0x0000FFFF;
      #if defined(SERIAL_DEBUG) && SERIAL_DEBUG == 1
        switch (buttonCode)
        {
          case IR_REMOTE_BUTTON_CODE_HOME_CLICK:
            Serial.println("IR Remote Button - Home - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_HOME_HOLD:
            Serial.println("IR Remote Button - Home - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_STAR_CLICK:
            Serial.println("IR Remote Button - Star - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_STAR_HOLD:
            Serial.println("IR Remote Button - Star - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_DOUBLELEFT_CLICK:
            Serial.println("IR Remote Button - Double Left - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_DOUBLELEFT_HOLD:
            Serial.println("IR Remote Button - Double Left - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_DOUBLERIGHT_CLICK:
            Serial.println("IR Remote Button - Double Right - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_DOUBLERIGHT_HOLD:
            Serial.println("IR Remote Button - Double Right - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_LEFT_CLICK:
            Serial.println("IR Remote Button - Left - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_LEFT_HOLD:
            Serial.println("IR Remote Button - Left - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_RIGHT_CLICK:
            Serial.println("IR Remote Button - Right - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_RIGHT_HOLD:
            Serial.println("IR Remote Button - Right - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_UP_CLICK:
            Serial.println("IR Remote Button - Up - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_UP_HOLD:
            Serial.println("IR Remote Button - Up - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_DOWN_CLICK:
            Serial.println("IR Remote Button - Down - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_DOWN_HOLD:
            Serial.println("IR Remote Button - Down - Hold");
            break;
            
          case IR_REMOTE_BUTTON_CODE_OK_CLICK:
            Serial.println("IR Remote Button - OK - Click");
            break;
          case IR_REMOTE_BUTTON_CODE_OK_HOLD:
            Serial.println("IR Remote Button - OK - Hold");
            break;
            
          default:
            Serial.print("IR Remote Button - Unknown - 0x");
            Serial.println(buttonCode, HEX);
            break;
        }
      #endif
      switch (buttonCode)
      {
        case IR_REMOTE_BUTTON_CODE_HOME_CLICK:
          // return to blank
          matrixMode = MatrixMode_t::blank;
          break;
        case IR_REMOTE_BUTTON_CODE_STAR_CLICK:
          // cycle brightness
          cycleBrightness();
          break;
        case IR_REMOTE_BUTTON_CODE_DOUBLELEFT_CLICK:
          // previous mode
          switch (matrixMode)
          {
            case MatrixMode_t::blank:
              matrixMode = MatrixMode_t::audio;
              break;
            case MatrixMode_t::audio:
              matrixMode = MatrixMode_t::snake;
              break;
            case MatrixMode_t::snake:
              matrixMode = MatrixMode_t::hue;
              break;
            case MatrixMode_t::hue:
              matrixMode = MatrixMode_t::snake;
              break;
          }
          break;
        case IR_REMOTE_BUTTON_CODE_DOUBLERIGHT_CLICK:
          // next mode
          switch (matrixMode)
          {
            case MatrixMode_t::blank:
              matrixMode = MatrixMode_t::hue;
              break;
            case MatrixMode_t::hue:
              matrixMode = MatrixMode_t::snake;
              break;
            case MatrixMode_t::snake:
              matrixMode = MatrixMode_t::audio;
              break;
            case MatrixMode_t::audio:
              matrixMode = MatrixMode_t::hue;
              break;
          }
          break;
      }
    }
    IrReceiver.resume(); // Receive the next value
    return true;
  }
  return false;
}

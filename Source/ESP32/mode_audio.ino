#include <Dual_MSGEQ7.h>

// hardware pin definitions - change to suit circuit
#define L_DATA_PIN    32
#define R_DATA_PIN    33
#define RESET_PIN   5
#define STROBE_PIN  4

// frequency reading the IC data
#define READ_DELAY  50

#define MAX_VALUE_DECAY 100

#define ADC_BIT 12
#define MAX_ADC_VALUE ((1 << ADC_BIT) - 1)

int16_t left_value_max[7];
int16_t right_value_max[7];

Dual_MSGEQ7 MSGEQ7(RESET_PIN, STROBE_PIN, L_DATA_PIN, R_DATA_PIN);

uint8_t audio_adc_to_column_height(int16_t value)
{
  int16_t value_denoised = value - 200;
  if (value_denoised < 0)
    value_denoised = 0;
  float value_perc = (float)value_denoised / (MAX_ADC_VALUE - 200);
  uint8_t column_height = round(value_perc * 17);
  return column_height;
}

void mode_audio()
{
  setAllLeds(CRGB::Black);
  setBorderLeds(CRGB::Blue);

  for (uint8_t i = 0; i < 7; i++)
  {
    left_value_max[i] = 0;
    right_value_max[i] = 0;
  }
  
  for (uint8_t x = 3; x < 17; x++)
  {
    leds[(1*MATRIX_WIDTH)+x] = CRGB::Red;
    leds[(1*MATRIX_WIDTH)+x] = CRGB::Red;
  }
  
  // This will set the IC ready for reading
  MSGEQ7.begin();
  analogReadResolution(ADC_BIT);

  uint32_t lastReadMillis = 0;
  while (true)
  {
    uint32_t currentMillis = millis();
    
    if(currentMillis - lastReadMillis > READ_DELAY) {
      lastReadMillis = currentMillis;
      
      MSGEQ7.read();

      for (uint8_t freq_no=0; freq_no < 7; freq_no++)
      {
        if (left_value_max[freq_no] >= MAX_VALUE_DECAY)
          left_value_max[freq_no] -= MAX_VALUE_DECAY;
        else
          left_value_max[freq_no] = 0;
        if (right_value_max[freq_no] >= MAX_VALUE_DECAY)
          right_value_max[freq_no] -= MAX_VALUE_DECAY;
        else
          right_value_max[freq_no] = 0;
        
        int16_t left_value = MSGEQ7.getL(freq_no);
        int16_t right_value = MSGEQ7.getR(freq_no);

        if (left_value > left_value_max[freq_no])
          left_value_max[freq_no] = left_value;
        if (right_value > right_value_max[freq_no])
          right_value_max[freq_no] = right_value;
          
        uint8_t left_column_height = audio_adc_to_column_height(left_value);
        uint8_t right_column_height = audio_adc_to_column_height(right_value);

        uint8_t i;
        for (i = 0; i < left_column_height; i++)
        {
          leds[((2+i)*MATRIX_WIDTH)+(9-freq_no)] = CRGB::White;
        }
        for (; i < 17; i++)
        {
          leds[((2+i)*MATRIX_WIDTH)+(9-freq_no)] = CRGB::Black;
        }
  
        for (i = 0; i < right_column_height; i ++)
        {
          leds[((2+i)*MATRIX_WIDTH)+(10+freq_no)] = CRGB::White;
        }
        for (; i < 17; i ++)
        {
          leds[((2+i)*MATRIX_WIDTH)+(10+freq_no)] = CRGB::Black;
        }

        Serial.print(left_value_max[freq_no]);
        Serial.print("\t");
        
        uint8_t left_column_height_max = audio_adc_to_column_height(left_value_max[freq_no]);
        if (left_column_height_max > 0)
          leds[((1+left_column_height_max)*MATRIX_WIDTH)+(9-freq_no)] = CRGB::Yellow;
        
        uint8_t right_column_height_max = audio_adc_to_column_height(right_value_max[freq_no]);
        if (right_column_height_max > 0)
          leds[((1+right_column_height_max)*MATRIX_WIDTH)+(10+freq_no)] = CRGB::Yellow;
        
      }
      Serial.println();
      Render();

      /*
      // Serial output
      for (uint8_t i=0; i < 7; i++)
      {
        uint16_t left_value = MSGEQ7.getL(i);
        Serial.print(left_value);
        Serial.print('\t');
      }
      Serial.print('\t');
      Serial.print('\t');
      for (uint8_t i=0; i < 7; i++)
      {
        uint16_t right_value = MSGEQ7.getR(i);
        Serial.print(right_value);
        Serial.print('\t');
      }
      Serial.println();
      */
    }
  }
}

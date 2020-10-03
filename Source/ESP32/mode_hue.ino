void mode_hue()
{
  byte hues[39];
  for (byte i = 0; i < 39; i++)
  {
    hues[i] = i*3;
  }
  while (true)
  {
    for (byte i = 0; i < 39; i++)
    {
      hues[i]++;
    }
    for (byte y = 0; y < MATRIX_HEIGHT; y++)
    {
      for (byte x = 0; x < MATRIX_WIDTH; x++)
      {
        leds[(y*MATRIX_WIDTH)+x].setHue(hues[x+y]);
      }
    }
    FastLED.show();
  }
}

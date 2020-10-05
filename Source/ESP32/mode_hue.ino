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
    
    uint16_t buttonCode;
    while (poll_ir_remote_buttons(buttonCode))
    {
      switch (buttonCode)
      {
        // hue mode doesn't have any specific controls
      }
    }
    Render();
  }
}

void mode_blank()
{
  while (matrixMode == MatrixMode_t::blank)
  {
    setAllLeds(CRGB::Black);
    Render();
    
    uint16_t buttonCode;
    while (poll_ir_remote_buttons(buttonCode))
    {
      switch (buttonCode)
      {
        // blank mode doesn't have any specific controls
      }
    }
  }
}

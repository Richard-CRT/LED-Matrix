#ifndef DUAL_MSGEQ7_H
#define DUAL_MSGEQ7_H

#include <Arduino.h>

class Dual_MSGEQ7
{
public:
  /** 
   * Class Constructor - arbitrary digital interface.
   *
   * Instantiate a new instance of the class.
   * 
   * \param resetPin	Arduino output pin for IC reset.
   * \param strobePin	Arduino output for strobing the device during read.
   * \param dataPinL	Arduino input where Left audio data gets read from the IC.
   * \param dataPinR	Arduino input where Right audio data gets read from the IC.
   */
 	Dual_MSGEQ7(uint8_t resetPin, uint8_t strobePin, uint8_t dataPinL, uint8_t dataPinR):
		_resetPin(resetPin), _strobePin(strobePin), _dataPinL(dataPinL), _dataPinR(dataPinR)
		{};

  /** 
   * Class Destructor.
   *
   * Cleans up the object once it is no longer required.
   */
  ~Dual_MSGEQ7(void) {};

  /** 
   * Initialize the object.
   *
   * Initialise the object data. This needs to be called during setup() to 
	 * initialise new data for the class that cannot be done during the object 
	 * creation.
	 *
	 * \return	No return value.
   */
	void begin(void);

  //-------------------------------------------------------------------------------

  /**
   * Reset the IC before initiating a read.
   *
   * \return No return value.
   */
	void reset(void);
	
  /**
   * Read the next set of data from the IC.
   *
	 * Read a full set of 7 values from the IC on both L and R. The optional parameter
	 * is used to suppress a reset before the read - default is to reset.
	 * 
   * \param bReset	Enables a device reset prior to read if true, disables if false.
   * \return		No Return value.
   */
	void read(bool bReset = true);
	
  /**
   * Get a specific value from the Left or Right audio data read.
	 *
	 * Read data elements from the device buffer filled by a previous read() call.
	 * The elements referenced are numbered 0..6 for IC values centered 
	 * around the 63Hz, 160Hz, 400Hz, 1KHz, 2.5KHz, 6.25KHz and 16kHz bands 
	 * respectively.
   *
   * \param band	index of the data point requested [0..6].
   * \return		The value requested from the buffer.
   */
	uint16_t getL(uint8_t band);
	uint16_t getR(uint8_t band);

private:
	// pins to interact with the IC
	uint8_t _resetPin;
	uint8_t _strobePin;
	uint8_t _dataPinL;
	uint8_t _dataPinR;

	// array of all input values
	uint16_t _dataL[7];
	uint16_t _dataR[7];
};

#endif


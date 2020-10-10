#include "Dual_MSGEQ7.h"

void Dual_MSGEQ7::begin(void)
{
	// Initialize the IC
	pinMode(_resetPin, OUTPUT);
	pinMode(_strobePin, OUTPUT);
	pinMode(_dataPinL, INPUT);
	pinMode(_dataPinR, INPUT);
	reset();
}

void Dual_MSGEQ7::reset(void)
{
	// Reset the IC according to the chart in the data sheet
	digitalWrite(_strobePin, LOW);
	digitalWrite(_resetPin, HIGH);
	delayMicroseconds(1); // tr = 100 nanoseconds here - likely the Arduino library will be slower than this anyway
	digitalWrite(_resetPin, LOW);
	delayMicroseconds(72);  // trs = 72 microseconds
}

void Dual_MSGEQ7::read(bool bReset)
{
	// Read all the values from the IC and store in local object array
	
	if (bReset) reset(); 	// reset the IC if required

	// read all 7 channels
	for (int i = 0; i < 7; i++)
	{
		// trigger next value
		digitalWrite(_strobePin, HIGH);
		delayMicroseconds(18);  // ts = 18 microseconds
		digitalWrite(_strobePin, LOW);

		// allow the output to settle
		delayMicroseconds(36);  // to = 36 microseconds

		// read pin
		_dataL[i] = analogRead(_dataPinL);
		_dataR[i] = analogRead(_dataPinR);

		delayMicroseconds(18);
	}
}

uint16_t Dual_MSGEQ7::getL(uint8_t band)
// Read the data from the local data array
{
	// don't read out of bounds
	if (band >= 7) return 0;

	return _dataL[band];
}

uint16_t Dual_MSGEQ7::getR(uint8_t band)
// Read the data from the local data array
{
	// don't read out of bounds
	if (band >= 7) return 0;

	return _dataR[band];
}

Simple flash LEDs connected to 74HC595 via SPI on Orange Pi Zero
================================================================

## Files:

  `stimer.h/stimer.c` - simple Linux timer wrapper

  `sgpio.h/sgpio.c` - simple GPIO wrappers to input/output over /sys/class/gpio

  `spi.h/spi.c` - simple Linux wrapper for access to /dev/spidev

  `spiled.c` - main applicaton module

## Orange Pi Zero 26 pin connector:

  | GPIO | Signal |Pin |Pin | Signal  | GPIO |
  |:----:| ------:|:--:|:--:|:------- |:----:|
  |      |   3.3V |  1 | 2  | 5V      |      |
  |  12  |  SDA.0 |  3 | 4  | 5V      |      |
  |  11  |  SCL.0 |  5 | 6  | 0V      |      |
  |   6  | GPIO.7 |  7 | 8  | TxD1    | 198  |
  |      |     0V |  9 | 10 | RxD1    | 199  | 
  |   1  |   RxD2 | 11 | 12 | GPIO.1  | 7    |
  |   0  |   TxD2 | 13 | 14 | 0V      |      |
  |   3  |   CTS2 | 15 | 16 | GPIO.4  | 19   |
  |      |   3.3v | 17 | 18 | GPIO.5  | 18   |
  |  15  |   MOSI | 19 | 20 | 0V      |      |
  |  16  |   MISO | 21 | 22 | RTS2    | 2    |
  |  14  |   SCLK | 23 | 24 | CE0     | 13   |
  |      |     0v | 25 | 26 | GPIO.11 | 10   |

## 74HC595 DIP-16 schematic:

  | Signal | Pin | Pin | Signal |          Description           |
  |:------:|:---:|:---:|:------:| ------------------------------ |
  |   QB   |  1  | 16  |  VCC   | VCC/GND - power +3.3...+5.0V   |
  |   QC   |  2  | 15  |  QA    | QA...QH - output               |
  |   QD   |  3  | 14  |  SI    | SI      - serial data input    |
  |   QE   |  4  | 13  |  nG    | nG      - Z output if '1'      |
  |   QF   |  5  | 12  |  RCK   | RCK     - storage reg. clock   |
  |   QG   |  6  | 11  |  SCK   | SCK     - shift reg. clock     |
  |   QH   |  7  | 10  |  nSCLR | nSCLR   - neg.reset shift reg. |
  |   GND  |  8  |  9  |  QH'   | QH'     - serial data output   |

## How to connect 74HC595 (one or two) to Orange Pi Zero

  | 74HC595 signal | 74HC595 pin | Pi Zero pin              | Pi zero signal |
  |:--------------:|:-----------:| ------------------------ |:--------------:|
  |      GND       |      8      | 25,20,14,9 or 6          | 0V             |
  |      VCC       |     16      | 1,17 (3.3V) or 2,4 (5V)  | 3.3V or 5V     |
  |      SI        |     14      | 19                       | MOSI           |
  |      SCK       |     11      | 23                       | SCLK           |
  |      RCK       |     12      | 18                       | GPIO-18        |
  |      nG        |     13      | any 0V/GND               | 0V             |
  |      nSCLR     |     10      | any VCC via pull up res. | 3.3V or 5V     |
  |      QH'       |      9      | to SI of second 74HC595  | -              |

## How to connect LEDs to 74HC595 (one or two)

  8-16 LEDs connected to 15 and 1-7 pins 74HC595 via limit current
  resistors (200..300 Ohm)


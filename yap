import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(12, GPIO.OUT)

try:
    while True:
        # Turn the LED on
        GPIO.output(12, GPIO.HIGH)

        # Wait for 3 seconds
        time.sleep(3)

        # Turn the LED off
        GPIO.output(12, GPIO.LOW)

        # Wait for 1 second
        time.sleep(1)

except KeyboardInterrupt:
    # Clean up GPIO on keyboard interrupt
    GPIO.cleanup()

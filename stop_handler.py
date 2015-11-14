import signal
import sys
import time


def term_handler(signal, frame):
    print "get TERM singal"
    time.sleep(10)
    print "exit program"
    sys.exit(0)

signal.signal(signal.SIGTERM, term_handler)
print('wait for SIGTERM signal')
signal.pause()

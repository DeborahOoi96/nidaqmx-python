"""This contains the helpers methods used in the DAQmx tests."""
import random
import sys


# Power uses fixed-point scaling, so we have a pretty wide epsilon.
POWER_ABS_EPSILON = 1e-3


def generate_random_seed():
    """Creates a random integer."""
    return random.randint(0, sys.maxsize)
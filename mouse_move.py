import sys
import logging
import pyautogui
from time import sleep
from random import randint

logger = logging.getLogger()
logger.setLevel(logging.DEBUG)

log_handler = logging.StreamHandler(sys.stdout)
log_handler.setLevel(logging.DEBUG)
log_formatter = logging.Formatter('[%(asctime)s] [%(levelname)s] %(message)s')
log_handler.setFormatter(log_formatter)
logger.addHandler(log_handler)


def mouse_move(minutes: int):
    logger.info('...... Initializing script ......')
    for minute in range(minutes, 1, -1):
        logger.info(f'...... {minute} minutes left ......')
        wait = 4
        moves_per_minute = int(60 / wait)
        for num_move in range(1, moves_per_minute + 1):
            random_x = randint(900, 1500)
            random_y = randint(400, 800)
            logger.debug(
                'Moving mouse to screen position: '
                f'(X: {random_x}, Y: {random_y}). '
                f'Running {num_move}/{moves_per_minute}'
            )
            pyautogui.moveTo(random_x, random_y, duration=0.2)
            sleep(wait)
    logger.info('...... Finish script ......')

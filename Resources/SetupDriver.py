import chromedriver_autoinstaller
import geckodriver_autoinstaller
from robot.api import logger

def setup_all_drivers():
    chromedriver_autoinstaller.install()
    logger.info("chrome driver installed successfully")
    geckodriver_autoinstaller.install()
    logger.info("firefox driver installed successfully ")

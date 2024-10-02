from PIL import Image
import pytesseract
import io
import base64
from robot.api.deco import keyword
from AppiumLibrary import AppiumLibrary

class OCRLibrary:

    def __init__(self):
        self.appium_lib = AppiumLibrary()

    @keyword
    def extract_text_from_image(self, locator):
        """Extracts text from an image located by the locator."""
        image_data = self._get_image_data(locator)
        image = Image.open(io.BytesIO(base64.b64decode(image_data)))
        text = pytesseract.image_to_string(image)
        return text

    @keyword
    def extract_specific_text_from_image(self, locator, specific_text):
        """Extracts specific text from an image located by the locator."""
        text = self.extract_text_from_image(locator)
        if specific_text in text:
            return specific_text
        else:
            return "Text not found"

    @keyword
    def extract_arabic_text_from_image(self, locator):
        """Extracts Arabic text from an image located by the locator."""
        image_data = self._get_image_data(locator)
        image = Image.open(io.BytesIO(base64.b64decode(image_data)))
        text = pytesseract.image_to_string(image, lang='ara')
        return text

    def _get_image_data(self, locator):
        """Helper function to get image data from an element located by the locator."""
        element = self.appium_lib.get_webelement(locator)
        image_data = element.screenshot_as_base64  # Assuming the method returns base64 encoded image
        return image_data

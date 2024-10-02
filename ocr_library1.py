import cv2
import pytesseract
import easyocr
from robot.api.deco import keyword

class OcrLibrary:

    def __init__(self):
        self.reader = easyocr.Reader(['en', 'ar'])

    @staticmethod
    @keyword
    def extract_all_text(image_path):
        """Extract all text from the image."""
        image = cv2.imread(image_path)
        text = pytesseract.image_to_string(image)
        return text.strip()

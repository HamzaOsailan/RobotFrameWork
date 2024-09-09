from PIL import Image
import pytesseract
from robot.api.deco import keyword

class OCRLibrary:

    @keyword
    def extract_text_from_image(self, image_path):
        """Extracts text from an image using Tesseract OCR."""
        try:
            image = Image.open(image_path)
            text = pytesseract.image_to_string(image)
            return text
        except Exception as e:
            return str(e)

# ocr_library1.py
import cv2
import pytesseract
import easyocr
from robot.api.deco import keyword  # Importing the keyword decorator

class OcrLibrary:

    def __init__(self):
        print("OcrLibrary initialized")  # For debugging
        self.reader = easyocr.Reader(['en', 'ar'])  # Specify the languages to use


    def extract_all_text(self, image_path):
        """Extract all text from the image."""
        image = cv2.imread(image_path)
        text = pytesseract.image_to_string(image)
        return text.strip()

    @keyword
    def extract_specific_text(self, image_path, specific_text):
        """Extract specific text from the image."""
        all_text = self.extract_all_text(image_path)
        return specific_text if specific_text in all_text else None

    @keyword
    def extract_arabic_text(self, image_path):
        """Extract Arabic text from the image."""
        image = cv2.imread(image_path)
        result = self.reader.readtext(image)
        arabic_text = " ".join([res[1] for res in result if all(1280 <= ord(c) <= 1535 for c in res[1])])
        return arabic_text.strip()

    @keyword
    def extract_specific_arabic_text(self, image_path, specific_arabic_text):
        """Extract specific Arabic text from the image."""
        arabic_text = self.extract_arabic_text(image_path)
        return specific_arabic_text if specific_arabic_text in arabic_text else None

    @keyword
    def live_image_processing_without_save(self, image):
        """Process live image without saving to file."""
        result = self.reader.readtext(image)
        return " ".join([res[1] for res in result])

    @keyword
    def live_image_processing_with_save(self, image, file_name):
        """Process live image and save it as a screenshot."""
        cv2.imwrite(file_name, image)
        return self.live_image_processing_without_save(image)

    @keyword
    def get_live_image(self):
        """Capture a live image from the webcam."""
        cap = cv2.VideoCapture(0)  # Use 0 for the default camera
        ret, frame = cap.read()
        cap.release()
        return frame if ret else None

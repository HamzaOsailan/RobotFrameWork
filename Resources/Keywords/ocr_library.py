from PIL import Image, ImageEnhance, ImageFilter
import pytesseract
from pdf2image import convert_from_path
from robot.api.deco import keyword
import re

@keyword
def extract_text_from_image(image_path):
    """
    Extracts text from the given image using Tesseract OCR.

    :param image_path: The path to the image file.
    :return: Extracted text as a string.
    """
    try:
        image = Image.open(image_path)
        # Convert image to grayscale
        image = image.convert('L')
        # Enhance contrast
        enhancer = ImageEnhance.Contrast(image)
        image = enhancer.enhance(2)
        # Apply sharpening filter
        image = image.filter(ImageFilter.SHARPEN)
        text = pytesseract.image_to_string(image, lang='eng', config='--psm 6')
        return text
    except Exception as e:
        return f"Error processing image: {e}"


def extract_text_from_pdf(pdf_path):
    """
    Extracts text from each page of the given PDF using Tesseract OCR.

    :param pdf_path: The path to the PDF file.
    :return: Extracted text from all pages as a string.
    """
    try:
        # Provide the path to Poppler's bin directory
        poppler_path = r'C:\Users\USER\Downloads\Release-24.07.0-0\poppler-24.07.0\Library\bin'

        # Convert PDF pages to images
        images = convert_from_path(pdf_path, poppler_path=poppler_path)
        all_text = ""
        for i, image in enumerate(images):
            # Extract text from each image
            text = pytesseract.image_to_string(image)
            all_text += f"--- Text from Page {i + 1} ---\n{text}\n"
        return all_text
    except Exception as e:
        return f"Error processing PDF: {e}"


def find_value_after_keyword(extracted_text, keyword):
    """
    Finds the value following the keyword within the extracted text.

    :param extracted_text: The full text extracted from the PDF.
    :param keyword: The keyword to search for within the text.
    :return: The value following the keyword or a message if not found.
    """
    # Adjust the regex pattern based on the format of your text
    pattern = rf'{re.escape(keyword)}\s*[:\s]*([\d\w]+)'  # Looks for the keyword followed by numbers or letters

    match = re.search(pattern, extracted_text, re.IGNORECASE)

    if match:
        return match.group(1)  # Return the first capturing group which is the value following the keyword
    else:
        return f"Could not find a value following '{keyword}'."


def main():
    # Specify the path to your PDF file
    pdf_file_path = 'C:/Users/USER/PycharmProjects/RobotFrameWork/screenshots/Id.pdf'

    # Extract text from the PDF
    extracted_text = extract_text_from_pdf(pdf_file_path)

    # Input the keyword to search
    keyword = input("Enter the text or keyword to find (e.g., 'No'): ")

    # Find and print the value following the keyword
    result = find_value_after_keyword(extracted_text, keyword)
    print(f"Extracted Value: {result}")


if __name__ == "__main__":
    main()
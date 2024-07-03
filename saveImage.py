from PIL import ImageGrab
import base64
from io import BytesIO
im = ImageGrab.grabclipboard()
buffered=BytesIO()
im.save(buffered, format="PNG")
img_str = str(base64.b64encode(buffered.getvalue()))
encoded = img_str[2:]
encoded = encoded[:-1]
with open('clipShare.txt', 'w') as f:
	f.write(encoded)
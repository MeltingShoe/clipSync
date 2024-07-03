import base64
with open('clipShare.txt','r') as f:
	clipText = f.read()
encoded = str(base64.b64encode(bytes(clipText,'utf-8')))
encoded = encoded[2:]
encoded = encoded[:-1]
with open('clipShare.txt','w') as f:
	f.write(encoded)


import json

with open('file.json') as f:
    data = json.load(f)

if data is not None:
    print(data)

print('Hello World')
import json
import speedtest

s = speedtest.Speedtest(secure=True)
s.download(threads=2)
s.upload(threads=2)
results = s.results.dict()

print(json.dumps(results))

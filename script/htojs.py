#!/usr/bin/python3

from lxml import html, etree
import xmltojson
import json
import sys


if len(sys.argv) > 1:
    file = sys.argv[1]

else:
    file = sys.stdin.read()



xml_raw = html.fromstring(file)
xml = etree.tostring(xml_raw)


js = json.loads(xmltojson.parse(xml))


print(json.dumps(js))

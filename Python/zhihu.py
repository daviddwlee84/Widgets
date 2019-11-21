#!/usr/bin/env python3

import subprocess
import sys

url = 'https://www.zhihu.com/search?q='

# concatenate the keywords with '+'
keywords = sys.argv[1:]
for word in keywords:
    url += word + '+'

url = url[:-1] # remove the last '+'

subprocess.call(['open', url])

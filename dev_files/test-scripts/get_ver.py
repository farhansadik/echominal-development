import platform
import sys

def linux_distribution():
  try:
    return platform.linux_distribution()
  except:
    return "N/A"

print("""Python version: %s
linux_distribution: %s
system: %s
machine: %s
platform: %s
uname: %s
version: %s
""" % (
sys.version.split('\n'),
str(linux_distribution(),
platform.system(),
platform.machine(),
platform.platform(),
platform.uname(),
platform.version()
))

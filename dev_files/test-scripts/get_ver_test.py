import platform
import sys

print('Line 1');
print(sys.version.split());

print('\nLine 2');
print(platform.system());

print('\nLine 3');
print(platform.machine());

print('\nLine 4');
print(platform.platform());

print('\nLine 5');
print(platform.uname());

print('\nLine 6');
print(platform.version());

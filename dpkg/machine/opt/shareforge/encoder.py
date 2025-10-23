import hashlib
import os
import random
import string
from datetime import datetime

BaseString = ''.join(random.choices(string.ascii_letters + string.digits, k=10))

TIMESTAMP = datetime.now().strftime("%m/%d/%Y %H:%M:%S")

# Combine TEST and TIMESTAMP
Final = BaseString + " " + TIMESTAMP

print(Final)

_Hash = hashlib.sha1()
_Hash.update(Final.encode())
Hash = _Hash.hexdigest()
print(Hash)

dynamic_file_path = f"/tmp/.hash_{Hash[:8]}"

try:
    with open(dynamic_file_path, 'w') as f:
        f.write(Hash)
    
    os.chmod(dynamic_file_path, 0o644)
    
    print(f"Hash written to {dynamic_file_path}")
except PermissionError:
    print("Permission denied. Ensure you have write access to /tmp or run with appropriate privileges.")
except Exception as e:
    print(f"An error occurred: {e}")

exit(0)

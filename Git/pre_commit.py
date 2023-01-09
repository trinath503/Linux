import os
import subprocess

result = subprocess.run(["git", "rev-parse", "--verify", "HEAD"], capture_output=True)
if result.returncode == 0:
    against = "HEAD"
else:
    result = subprocess.run(["git", "hash-object", "-t", "tree", "/dev/null]"], capture_output=True)
    against = result.stdout.decode(encoding="UTF-8")

print(against)
result = subprocess.run(["git", "diff-index", "--name-only", against], capture_output=True)
all_files = result.stdout.decode(encoding="UTF-8").split("\n")

print("These are pre commit files hooks...")

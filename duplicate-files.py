#!/usr/bin/env python3

import os
import sys
import hashlib

from pprint import pprint as pp


def travers_dir(dir):
	hashes_seen = {}
	duplicate_files = []

	exclude = ['.git']
	for root, dirs, files in os.walk(dir):
		dirs[:] = [d for d in dirs if d not in exclude]
		path = root.split(os.sep)
		# print((len(path) - 1) * '---', os.path.basename(root))
		for file in files:
			# print(len(path) * '---', file)
			fname = dir + '/{}'.format(file)
			fname = fname.replace('//', '/')
			hash_md5 = hashlib.md5()

			try:
				with open(fname, "rb") as f:
					for chunk in iter(lambda: f.read(4096), b""):
						hash_md5.update(chunk)
					fhash = hash_md5.hexdigest()
					# pp(hashes_seen)
					if fhash in hashes_seen:
						duplicate_files.append(fname)
						duplicate_files.append(hashes_seen[fhash])
						# tmp_list = hashes_seen[fhash]
						# hashes_seen[fhash] = tmp_list.append(fname)
					else:
						hashes_seen[fhash] = fname
			except OSError as e:
				print("Some file was inaccessible...")


	pp(hashes_seen)
	pp(duplicate_files)


if __name__ == '__main__':
	travers_dir(sys.argv[1])
#!/usr/bin/python
# -*- coding: utf-8 -*-
#@author Mosab Ahmad <mosab.ahmad@gmail.com>

import os
import re


MOVIES_PATH = '/home/mosab/Videos/movies'


def proper_name(movie_name):
    movie_name = re.sub(r'\W+', ' ', movie_name)
    movie_name_list = movie_name.split(' ')
    movie_name = '.'.join(e for e in movie_name_list).lower()
    return movie_name


if __name__ == '__main__':
    for root, dirs, files in os.walk(MOVIES_PATH, topdown=False):

        for name in files:
            old_file_name = os.path.join(root, name)
            new_file_name = os.path.join(root, proper_name(name))
            os.rename(old_file_name, new_file_name)

        for name in dirs:
            old_dir_name = os.path.join(root, name)
            new_dir_name = os.path.join(root, proper_name(name))
            os.rename(old_dir_name, new_dir_name)


    print 'We are done!'
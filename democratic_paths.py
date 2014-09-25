#!/usr/bin/python
# -*- coding: utf-8 -*-
# Calculating different permutations of the democratic path we got in Egypt.

from itertools import permutations

i = ['دستور', 'برلمان', 'رئاسة', 'استفتاء']

results = []
for a in permutations(i, 4):
    results.append(a)

for idx, val in enumerate(results):
    print 'سيناريو {} : احنا نبدأ بـ"{}"، وبعدين  "{}" وفي الآخر "{}"'.format((idx + 1), val[0], val[1], val[2])
    print

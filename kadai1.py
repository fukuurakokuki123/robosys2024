#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

import sys

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# 標準入力から2つの数値を読み取る
try:
    a, b = map(int, input().split())
except ValueError:
    print("少なくとも2つの数値を入力してください。", file=sys.stderr)
    sys.exit(1)

# GCDを計算して結果を表示
print(gcd(a, b))

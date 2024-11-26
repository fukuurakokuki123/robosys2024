#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

import sys

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# 標準入力からデータを取得
try:
    numbers = sys.stdin.read().strip().split()
    if len(numbers) < 2:
        print("少なくとも2つの数値を入力してください。")
        sys.exit(1)
    a, b = map(int, numbers[:2])
except ValueError:
    print("入力は数値でなければなりません。")
    sys.exit(1)

# GCDを計算して出力
print(gcd(a, b))

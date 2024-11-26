#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause
import sys

# 標準入力からデータを取得
try:
    inputs = sys.stdin.read().strip().split()
    if len(inputs) < 2:
        print("少なくとも2つの数値を入力してください。")
        sys.exit(1)
    a, b = int(inputs[0]), int(inputs[1])
except ValueError:
    print("入力は数値でなければなりません。")
    sys.exit(1)

# GCD（最大公約数）を計算する関数
def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# GCDを計算して結果を表示
print(gcd(a, b))

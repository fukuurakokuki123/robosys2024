#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

import sys

# 数値の入力を受け付ける
try:
    a, b = map(int, input("2つの数値を入力してください: ").split())
except ValueError:
    print("エラー: 入力は数値でなければなりません。")
    sys.exit(1)

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# GCDを計算して結果を表示
print(f"GCD: {gcd(a, b)}")

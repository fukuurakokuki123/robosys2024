#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

import sys

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# コマンドライン引数を確認
if len(sys.argv) > 1:
    try:
        a, b = map(int, sys.argv[1:3])  # 最初の2つの引数を使う
    except ValueError:
        print("エラー: 引数は数値でなければなりません。")
        sys.exit(1)
else:
    try:
        # 標準入力を受け付ける
        a, b = map(int, input("2つの数値を入力してください: ").split())
    except ValueError:
        print("エラー: 入力は数値でなければなりません。")
        sys.exit(1)

# GCDを計算して結果を表示
print(f"GCD: {gcd(a, b)}")

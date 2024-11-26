#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause
import sys

# コマンドライン引数の取得
if len(sys.argv) < 3:
    print("エラー: 少なくとも2つの数値を入力してください。")
    sys.exit(1)

# 数値の処理（例えばGCD計算など）
try:
    a = int(sys.argv[1])
    b = int(sys.argv[2])
except ValueError:
    print("エラー: 引数は数値でなければなりません。")  # エラーメッセージを修正
    sys.exit(1)

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# GCDを計算して結果を表示
print(gcd(a, b))

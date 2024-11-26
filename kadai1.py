#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

import sys

# 引数が2つ以上渡されていることを確認
if len(sys.argv) < 3:
    print("少なくとも2つの数値を入力してください。")
    sys.exit(1)

try:
    # 引数を整数として読み込み
    a, b = map(int, sys.argv[1:3])
    # 計算
    print(a + b)
except ValueError:
    print("少なくとも2つの数値を入力してください。")
    sys.exit(1)

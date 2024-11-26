#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "Error at line ${1}: Test failed"
    res=1
}

res=0

# テスト 1: 2つの数値を入力してGCDを計算
out=$(echo "12 15" | ./kadai1.py)
if [ "${out}" != "3" ]; then
    ng "$LINENO"
fi

# テスト 2: 入力が少ない場合
out=$(echo "12" | ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi

# テスト 3: 数値以外の入力
out=$(echo "あ 15" | ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "入力は数値でなければなりません。" ]; then
    ng "$LINENO"
fi

# テスト 4: 入力が空の場合
out=$(echo "" | ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi

if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

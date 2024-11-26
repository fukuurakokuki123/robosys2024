#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "Error at line ${1}: Test failed"
    res=1
}

res=0

# 1つ目のテスト: 正常な入力 (12 15の場合)
out=$(echo "12 15" | python3 ./kadai1.py)
if [ "${out}" != "GCD: 3" ]; then
    ng "$LINENO"
fi

# 2つ目のテスト: 非数値が含まれる場合 ("12 あ")
out=$(echo "12 あ" | python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "エラー: 入力は数値でなければなりません。" ]; then
    ng "$LINENO"
fi

# 3つ目のテスト: 数値が1つだけ ("12")
out=$(echo "12" | python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "エラー: 入力は数値でなければなりません。" ]; then
    ng "$LINENO"
fi

# 4つ目のテスト: 空の入力
out=$(echo "" | python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "エラー: 入力は数値でなければなりません。" ]; then
    ng "$LINENO"
fi

# テスト結果の出力
if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

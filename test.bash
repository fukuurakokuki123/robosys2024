#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "Error at line ${1}: Test failed"
    res=1
}

res=0

# 1つ目のテスト: 12 15が与えられた場合
out=$(python3 ./kadai1.py 12 15)
if [ "${out}" != "3" ]; then
    ng "$LINENO"
fi

# 2つ目のテスト: 非数値「あ」が与えられた場合
out=$(python3 ./kadai1.py あ)
if [ "$?" -ne 1 ] || [ "${out}" != "入力は数値でなければなりません。" ]; then
    ng "$LINENO"
fi

# 3つ目のテスト: 引数なし
out=$(python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi

# 結果の出力
if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "Error at line ${1}: Test failed"
    res=1
}

res=0

out=$(python3 ./kadai1.py 12 15)
if [ "${out}" != "3" ]; then
    ng "$LINENO"
fi

out=$(python3 ./kadai1.py あ)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。"]; then
    ng "$LINENO"
fi

out=$(python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi

if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

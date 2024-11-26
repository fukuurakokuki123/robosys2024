/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Kouki Fukuura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "Error at line ${1}: Test failed"
    res=1
}

res=0
+ res=0

# 1つ目のテスト
out=$(python3 ./kadai1.py 12 15)
++ python3 ./kadai1.py 12 15
+ out=3
if [ "${out}" != "3" ]; then
    ng "$LINENO"
fi
+ '[' 3 '!=' 3 ']'

# 2つ目のテスト: 非数値の場合
out=$(python3 ./kadai1.py あ)
++ python3 ./kadai1.py あ
+ out=少なくとも2つの数値を入力してください。
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi
+ '[' 1 -ne 1 ']'
+ '[' 少なくとも2つの数値を入力してください。 '!=' 少なくとも2つの数値を入力してください。 ']'

# 3つ目のテスト: 引数なし
out=$(python3 ./kadai1.py)
++ python3 ./kadai1.py
+ out=少なくとも2つの数値を入力してください。
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi
+ '[' 1 -ne 1 ']'
+ '[' 少なくとも2つの数値を入力してください。 '!=' 少なくとも2つの数値を入力してください。 ']'

if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi
+ '[' 0 = 0 ']'
+ echo 'OK: All tests passed'

exit $res
+ exit 0

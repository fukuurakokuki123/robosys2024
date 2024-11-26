#!/bin/bash -xv

# ng 関数: テストに失敗したときのエラーメッセージを表示
ng () {
    echo "Error at line ${1}: Test failed"
    res=1  # エラー発生時には res を 1 に設定
}

# 初期設定
res=0

# テスト 1: 2つの数値を渡して GCD を計算
out=$(python3 ./kadai1.py 12 15)  # 数値を2つ渡す
if [ "${out}" != "3" ]; then
    ng "$LINENO"
fi

# テスト 2: 不正な入力に対してエラーが出ることを確認
out=$(python3 ./kadai1.py あ)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi

# テスト 3: 空の入力に対してエラーが出ることを確認
out=$(python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "少なくとも2つの数値を入力してください。" ]; then
    ng "$LINENO"
fi

# すべてのテストが成功した場合
if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

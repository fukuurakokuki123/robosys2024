#!/bin/bash -xv

# ng 関数: テストに失敗したときのエラーメッセージを表示
ng () {
    echo "Error at line ${1}: Test failed"
    res=1  # エラー発生時には res を 1 に設定
}

# 初期設定
res=0

# テスト 1: seq 5 | ./kadai1.py の出力が 15 であることを確認
out=$(seq 5 | python3 ./kadai1.py)
if [ "${out}" != "15" ]; then
    ng "$LINENO"
fi

# テスト 2: echo あ | ./kadai1.py の終了ステータスが 1 で、出力が空であることを確認
out=$(echo あ | python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "" ]; then
    ng "$LINENO"
fi

# テスト 3: echo | ./kadai1.py の終了ステータスが 1 で、出力が空であることを確認
out=$(echo | python3 ./kadai1.py)
if [ "$?" -ne 1 ] || [ "${out}" != "" ]; then
    ng "$LINENO"
fi

# すべてのテストが成功した場合
if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

#!/bin/bash -xv

# ng 関数: テストに失敗したときのエラーメッセージを表示
ng () {
    echo "Error at line ${1}: Test failed"
    res=1  # エラー発生時には res を 1 に設定
}

# 初期設定
res=0

# テスト 1: seq 5 | ./plus の出力が 15 であることを確認
out=$(seq 5 | ./plus)
[ "${out}" = "15" ] || ng "$LINENO"

# テスト 2: echo あ | ./plus の終了ステータスが 1 で、出力が空であることを確認
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# テスト 3: echo | ./plus の終了ステータスが 1 で、出力が空であることを確認
out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# すべてのテストが成功した場合
if [ "$res" = 0 ]; then
    echo "OK: All tests passed"
else
    echo "NG: Some tests failed"
fi

exit $res

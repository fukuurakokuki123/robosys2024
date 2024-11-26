!/usr/bin/python3
import sys

# コマンドライン引数の取得
if len(sys.argv) < 3:
    print("少なくとも2つの数値を入力してください。")
    sys.exit(1)

# 数値の処理（例えばGCD計算など）
try:
    a = int(sys.argv[1])
    b = int(sys.argv[2])
except ValueError:
    print("入力は数値でなければなりません。")
    sys.exit(1)

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# GCDを計算して結果を表示
print(gcd(a, b))

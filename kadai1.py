import sys

def gcd(a, b):
    """最大公約数を計算する関数"""
    while b != 0:
        a, b = b, a % b
    return a

def main():
    # 引数を取得
    if len(sys.argv) < 3:
        print("少なくとも2つの数値を入力してください。")
        sys.exit(1)
    
    try:
        # 引数を整数に変換
        numbers = list(map(int, sys.argv[1:]))
    except ValueError:
        print("無効な入力です。正しい整数を入力してください。")
        sys.exit(1)

    # 最大公約数を計算
    result_gcd = numbers[0]
    for num in numbers[1:]:
        result_gcd = gcd(result_gcd, num)

    # 結果を表示
    print(result_gcd)
    sys.exit(0)

if __name__ == "__main__":
    main()

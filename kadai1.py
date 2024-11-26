def gcd(a, b):
    """最大公約数を計算する関数"""
    while b != 0:
        a, b = b, a % b
    return a

def main():
    # 入力を取得
    print("計算する数値をスペース区切りで入力してください。")
    
    # 入力された数値をリストに変換
    try:
        numbers = list(map(int, input().split()))
    except ValueError:
        print("無効な入力です。正しい整数を入力してください。")
        return

    if len(numbers) < 2:
        print("少なくとも2つの数値を入力してください。")
        return

    # 最大公約数を計算
    result_gcd = numbers[0]
    for num in numbers[1:]:
        result_gcd = gcd(result_gcd, num)

    # 結果を表示
    print(f"入力された数値の最大公約数(GCD): {result_gcd}")

if __name__ == "__main__":
    main()

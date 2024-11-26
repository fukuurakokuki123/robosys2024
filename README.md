# kadai1　
![test](https://github.com/fukuurakokuki123/robosys2024/actions/workflows/test.yml/badge.svg)

標準入力から2つ以上の数値を読み込み、それらの最大公約数 (GCD) を計算します。
数値以外の入力や無効な入力には適切なエラーメッセージを表示します。

## 必要なソフトウェア
・python(テスト済みバージョン：3.7～3.11)

## テスト環境
・Ubuntu20.04

## 実行手順
1.端末にgit clone
git@github.com:https:/fukuurakokuki123/robosys2024.gitを入力します。

2.cd tmp/robosys2024のリポジトリで./kadai1.pyで実行します。

## 簡単な使い方
-入力例-

1.プログラムを実行すると、以下のように入力を求められます:

    2つの数値を入力してください: 12 15
    
2.数値をスペース区切りで入力してください。

　　          12 15
  
3.出力として最大公約数 (GCD) が表示されます：

    GCD: 3

-エラー処理の例-

無効な入力や数値以外の入力があった場合、エラーメッセージが表示されます。
	
・非数値入力の場合 :

　　 2つの数値を入力してください :   abc xyz
  
　　 エラー: 入力は数値でなければなりません。
  
・空入力の場合 :

     2つの数値を入力してください : 
   
     エラー: 入力は数値でなければなりません。

## テストの結果

1.test.bashを実行

　　　　./test.bashで実行します。

テストケース,　入力,　期待される出力,　結果

　　　　ケース1: 有効な入力,　12 15,　GCD : 3,　✔ Pass

 　　　　ケース2: 非数値の入力,　あ あ,　エラー : 入力は数値でなければなりません。,　✔ Pass

　　　　ケース3: 入力が空の場合, エラー　: 入力は数値でなければなりません, ✔ Pass

　　　　ケース4: 負の整数を含む有効な入力,　 -12 -15,　 GCD　:　 3,　✔ Pass

テスト結果の出力

　　　　すべてのテストが成功した場合、以下のメッセージが表示されます:

　　　　OK: All tests passed

## ライセンスと著作権

最大公約数と最小公倍数を算出・取得　プログラミング・・・https://note.nkmk.me/python-gcd-lcm/Python

Pythonの例外処理・・・https://zenn.dev/tigrebiz/articles/python-try-exception

テスト実行：ロボットシステム学11/7スライド・・・https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#14　

・このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

・このパッケージは，aaa由来のコード（© 2022 Hoge Fuge）を利用しています．

・このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．

ryuichiueda/my_slides robosys_2024

© 2024 Kouki Fukuura

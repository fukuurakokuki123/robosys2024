# robosys2024
授業で作成
# GCDコマンド
![test](https://github.com/fukuurakokuki123/robosys2024/actions/workflows/test.yml/badge.svg)
## 概要　

このプログラミングは、標準入力から2つの数値を読み込み、それらの最大公約数 (GCD) を計算します。
数値以外の入力や無効な入力には適切なエラーメッセージを表示します。

## 使用方法
### リポジトリをクローン
    $ git clone https://github.com/fukuurakokuki123/robosys2024.git
### 実行可能にする

    $ cd robosys2024  
    $ chmod +x gcd
## 実行例
###  2つの数の場合


    $  echo "56 98" | ./gcd 
### 実行結果
   
    GCD:14
### 3つの数の場合

　　 ~~~ 
   $ echo "56 98 120" | ./gcd
   ~~~
   
### 実行結果
   
     GCD:2
###  数字以外が入力された場合
　  
      $ echo "あ　a ？" | ./gcd
   
     エラー: 数値を入力してください。
   
## 必要なソフトウェア
- python(テスト済みバージョン：3.7 ~ 3.11)

## テスト環境
- Ubuntu 22.04 LTS

## 参考文献

- 最大公約数と最小公倍数を算出・取得　プログラミング・・・https://note.nkmk.me/python-gcd-lcm/Python

- Pythonの例外処理・・・https://zenn.dev/tigrebiz/articles/python-try-exception

- テスト実行：ロボットシステム学11/7スライド・・・https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#14

## ライセンスと著作権

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．

    - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024

- © 2024 Kouki Fukuura

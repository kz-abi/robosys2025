# resistor

![test](https://github.com/kz-abi/robosys2025/actions/workflows/test.yml/badge.svg)

入力された抵抗値（オーム）を、抵抗のカラーコード（色の帯）に変換して絵文字で表示するコマンドです。

## 実行環境
* Python 3.7 以上

## インストール方法
\`\`\`bash
git clone https://github.com/kz-abi/robosys2025.git
cd robosys2025
\`\`\`

## 使い方

数値を引数に与えるか、標準入力から渡すと、対応する色が出力されます。

### 1. 引数で渡す場合
コマンドの後ろに数値を入力します。

\`\`\`bash
$ ./resistor 100
🟤 ⬛ 🟤
\`\`\`

### 2. パイプ（標準入力）で渡す場合
echo コマンドなどと組み合わせて使えます。k（キロ）の単位も認識します。

\`\`\`bash
$ echo "4.7k" | ./resistor
🟡 🟣 🔴
\`\`\`

## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* © 2025 kz-abi

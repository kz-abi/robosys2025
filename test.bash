#!/bin/bash
# SPDX-FileCopyrightText: 2025 kz-abi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

# 正方向テスト1: 100 Ω -> 茶 黒 茶
out=$(echo "100" | ./resistor)
[ "${out}" = "🟤 ⬛ 🟤 (茶 黒 茶)" ] || ng "$LINENO"

# 正方向テスト2: 4.7k Ω -> 黄 紫 赤
out=$(echo "4.7k" | ./resistor)
[ "${out}" = "🟡 🟣 🔴 (黄 紫 赤)" ] || ng "$LINENO"

# 異常値テスト
out=$(echo "あ" | ./resistor)
[ "${out}" = "数値を入力してください" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res

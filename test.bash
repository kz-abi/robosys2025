#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 kz-abi 　　　　　
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ	
	res=1
}

res=0

# 100 -> 茶 黒 茶
out=$(echo "100" | ./resistor)
[ "${out}" = "🟤 ⬛ 🟤" ] || ng "$LINENO"

# 4.7k -> 黄 紫 赤
out=$(echo "4.7k" | ./resistor)
[ "${out}" = "🟡 🟣 🔴" ] || ng "$LINENO"

# 異常値
out=$(echo "あ" | ./resistor)
[ "${out}" = "数値を入力してください" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res


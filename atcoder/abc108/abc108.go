package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func toInt(value string) int {
	num, _ := strconv.Atoi(value)
	return num
}

func splitWithInt(value string) []int {
	vals := strings.Split(value, " ")
	nums := make([]int, len(vals))
	for index, elem := range vals {
		nums[index] = toInt(elem)
	}
	return nums
}

// A
// func main() {
// 	k := toInt(gets())
// 	fmt.Println((k / 2) * (k - k/2))
// }

// B WA
func main() {
	in := splitWithInt(gets())
	x, y := int(math.Abs(float64(in[0]-in[2]))), int(math.Abs(float64(in[1]-in[3])))

	if in[1] < in[3] {
		// 上
		if in[0] < in[2] {
			// 右
			fmt.Println(in[2]-y, in[3]+x, in[2]-y-x, in[3]+x-y)
		} else {
			// 左
			fmt.Println(in[2]-y, in[3]-x, in[2]-y+x, in[3]-x-y)
		}
	} else if in[1] > in[3] {
		// 下
		if in[0] < in[2] {
			// 右
			fmt.Println(in[2]+y, in[3]+x, in[2]+y-x, in[3]+x+y)
		} else {
			// 左
			fmt.Println(in[2]-y, in[3]-x, in[2]-y+x, in[3]-x-y)
		}
	} else {
		if in[0] < in[2] {
			// 右
			fmt.Println(in[2], in[3]+x, in[2]-x, in[3]+x)
		} else {
			// 左
			fmt.Println(in[2], in[3]-x, in[2]+x, in[3]-x)
		}
	}
}

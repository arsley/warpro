package main

import (
	"bufio"
	"fmt"
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
// 	nums := splitWithInt(gets())
// 	fmt.Println(nums[0] - (nums[1] - 1))
// }

// B
func transpose(data [][]string, w int, h int) [][]string {
	res := make([][]string, w)
	for i := 0; i < w; i++ {
		res[i] = make([]string, h)
		for j := 0; j < h; j++ {
			res[i][j] = data[j][i]
		}
	}
	return res
}

func main() {
	nums := splitWithInt(gets())
	h, w := nums[0], nums[1]
	m := make([][]string, h)
	temp := [][]string{}
	ttemp := [][]string{}
	for i := 0; i < h; i++ {
		m[i] = strings.Split(gets(), "")
	}

	for _, e := range m {
		for _, c := range e {
			if c == "#" {
				temp = append(temp, e)
				break
			}
		}
	}

	// for _, e := range temp {
	// 	fmt.Println(strings.Join(e, ""))
	// }

	temp = transpose(temp, w, len(temp))

	// for _, e := range temp {
	// 	fmt.Println(e)
	// }

	for _, e := range temp {
		for _, c := range e {
			if c == "#" {
				ttemp = append(ttemp, e)
				break
			}
		}
	}

	// for _, e := range ttemp {
	// 	fmt.Println(e)
	// }

	ans := transpose(ttemp, len(ttemp[0]), len(ttemp))
	for _, e := range ans {
		fmt.Println(strings.Join(e, ""))
	}
}

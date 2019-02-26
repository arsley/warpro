package main

import (
	"fmt"
	"bufio"
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

func toFloat64(value string) float64 {
	num, _ := strconv.ParseFloat(value, 64)
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
// 	s := strings.Split(gets(), "/")
// 	days := make([]int, len(s))
// 	for index, elem := range s {
// 		days[index] = toInt(elem)
// 	}
//
// 	y, m := days[0], days[1]
//
// 	if y < 2019 {
// 		fmt.Println("Heisei")
// 	} else if m < 5 {
// 		fmt.Println("Heisei")
// 	} else {
// 		fmt.Println("TBD")
// 	}
// }

// B
func main()  {
	N := toInt(gets())
	var sum float64
	for i := 0; i < N; i++ {
		in := strings.Split(gets(), " ")
		if strings.TrimRight(in[1], "\n") == "BTC" {
			sum += toFloat64(in[0]) * 380000.0
		} else {
			sum += toFloat64(in[0])
		}
	}
	fmt.Println(sum)
}

package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
  "fmt"
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
//  fmt.Println("ABC" + gets())
// }

// B
// func main() {
//   N := toInt(gets())
//   var c int
//   for c = 1; c <= N; c *= 2 {}
//   fmt.Println(c / 2)
// }

// C
func main() {
  var line []int
  var a, b int
  line = splitWithInt(gets())
  N, M := line[0], line[1]
  route := make([]int8, N)

  for i := 0; i < M; i++ {
    line = splitWithInt(gets())
    a, b = line[0], line[1]
    if a == 1 {
      route[b - 1] += 1
    } else if b == N {
      route[a - 1] += 1
    }
  }

  possible := false
  for _, r := range route {
    if r == 2 {
      possible = true
      break
    }
  }

  if possible {
    fmt.Println("POSSIBLE")
  } else {
    fmt.Println("IMPOSSIBLE")
  }
}

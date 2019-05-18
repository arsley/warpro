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

// ABC087B - Coins
// func main() {
//     a := toInt(gets())
//     b := toInt(gets())
//     c := toInt(gets())
//     x := toInt(gets())
//     count := 0

//     for i := 0; i <= a; i++ {
//         for j := 0; j <= b; j++ {
//             for k := 0; k <= c; k++ {
//                 if(500 * i + 100 * j + 50 * k == x) { count++ }
//             }
//         }
//     }
//     fmt.Println(count)
// }

// ABC083B - Some Sums

func main() {
    inputs := splitWithInt(gets())
    n, a, b := inputs[0], inputs[1], inputs[2]
    count := 0
    var memo int
    for i := 1; i <= n; i++ {
        memo = i/10000%10 + i/1000%10 + i/100%10 + i/10%10 + i % 10
        if(memo >= a && memo <= b) { count += i }
    }
    fmt.Println(count)
}

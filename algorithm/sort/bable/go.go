package main

import "fmt"

type DataBuilder struct {
	nums []int
}

func (d *DataBuilder) OutNum(n int) {
	var s []int
	d.nums = append(s, n)
}

func main() {
	// var db DataBuilder
	// fmt.Println(db.nums)
	var p *int
	var num int

	n := 10
	p = &n
	num = *p

	fmt.Println(num)
}

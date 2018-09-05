class DataBuilder {
  constructor() {
    this.nums = []
  }
  init_ary(n) {
    for(let i = 0; i < n; i++) {
      this.nums.push(DataBuilder.out_num())
    }
    return this.nums
  }
  static out_num() {
    return Math.floor(Math.random() * Math.floor(100))
  }
}

function bableSort(numAry) {
  numAry.map(() => {
    numAry.forEach(function(element, index) {
      if (numAry.length > index -1) {
        if (numAry[index] > numAry[index + 1]) {
          numAry[index] = numAry[index + 1]
          numAry[index + 1] = element
        }
      }
    }, this);
  })
  return numAry
}

let target = new DataBuilder()
console.log(bableSort(target.init_ary(10)))

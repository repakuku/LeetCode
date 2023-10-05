func rotate(_ nums: inout [Int], _ k: Int) {
    
    
    
}

var nums = [1, 2, 3, 4, 5, 6, 7]
var k = 3
rotate(&nums, k)

nums == [5,6,7,1,2,3,4]

nums = [-1,-100,3,99]
k = 2
rotate(&nums, k)

nums == [3,99,-1,-100]

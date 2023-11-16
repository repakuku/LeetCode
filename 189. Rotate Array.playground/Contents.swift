func rotate(_ nums: inout [Int], _ k: Int) {
	for _ in 0..<k {
		nums.insert(nums.removeLast(), at: 0)
	}
}

var nums = [1, 2, 3, 4, 5, 6, 7]
var k = 3
rotate(&nums, k)
print(nums)

nums == [5,6,7,1,2,3,4]

nums = [-1,-100,3,99]
k = 2
rotate(&nums, k)
print(nums)

nums == [3,99,-1,-100]

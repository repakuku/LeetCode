func rotate(_ nums: inout [Int], _ k: Int) {
	
	let n = nums.count
	let k = k % n
	
	reverse(&nums, start: 0, end: n - 1)
	reverse(&nums, start: 0, end: k - 1)
	reverse(&nums, start: k, end: n - 1)
	
	func reverse(_ nums: inout [Int], start: Int, end: Int) {
		var start = start
		var end = end
		
		while start < end {
			let temp = nums[start]
			nums[start] = nums[end]
			nums[end] = temp
			start += 1
			end -= 1
		}
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

// 123
// 312
// 231
// 123

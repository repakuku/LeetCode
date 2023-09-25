class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = m - 1
        var index2 = n - 1
        var currentIndex = nums1.count - 1
        
        while index1 >= 0 && index2 >= 0 {
            if nums1[index1] > nums2[index2] {
                nums1[currentIndex] = nums1[index1]
                index1 -= 1
            } else {
                nums1[currentIndex] = nums2[index2]
                index2 -= 1
            }
            currentIndex -= 1
        }
        
        while index2 >= 0 {
            nums1[currentIndex] = nums2[index2]
            index2 -= 1
            currentIndex -= 1
        }
    }
}

let solution = Solution()
var numbers1 = [0]
let numbers2 = [2]
let m = 0
let n = 1

solution.merge(&numbers1, m, numbers2, n)
print(numbers1)

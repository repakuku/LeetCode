/*
You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, 
and two integers m and n, representing the number of elements in nums1 and nums2
respectively.

Merge nums1 and nums2 into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be 
stored inside the array nums1. To accommodate this, nums1 has a length of m + n,
where the first m elements denote the elements that should be merged, and the
last n elements are set to 0 and should be ignored. nums2 has a length of n.

Example 1:

Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
Output: [1,2,2,3,5,6]
Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from 
nums1.
 
Example 2:

Input: nums1 = [1], m = 1, nums2 = [], n = 0
Output: [1]
Explanation: The arrays we are merging are [1] and [].
The result of the merge is [1].
 
Example 3:

Input: nums1 = [0], m = 0, nums2 = [1], n = 1
Output: [1]
Explanation: The arrays we are merging are [] and [1].
The result of the merge is [1].
Note that because m = 0, there are no elements in nums1. The 0 is only there to 
ensure the merge result can fit in nums1.
 */

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

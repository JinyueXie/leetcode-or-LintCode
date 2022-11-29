We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/subarray-sum-equals-k/ ）
# Description:
 <p> Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

A subarray is a contiguous non-empty sequence of elements within an array.</p> 

**example 1:**
```
Input: nums = [1,1,1], k = 2
Output: 2
```

**example 2:**
```
Input: nums = [1,2,3], k = 3
Output: 2
```

**Constraints:**
```
1 <= nums.length <= 2 * 104
-1000 <= nums[i] <= 1000
-107 <= k <= 107
```

 ### Solution Hash map

```Python
class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        preSum = [nums[0]]
        subArray = {}
        subArray[0] = 1
        for i in range(1, len(nums)):
            preSum.append(preSum[-1] + nums[i])
        
        results = 0
        for prefix in preSum:
            if prefix - k in subArray:
                results += subArray[prefix - k]
            
            subArray[prefix] = subArray.get(prefix, 0) + 1
        
        return results
    
Time complexity : O(n). The entire numsnums array is traversed only once.
Space complexity : O(n). Hashmap mapmap can contain up to nn distinct entries in the worst case.
```

```Java
class Solution {
    public int subarraySum(int[] nums, int k) {
        int count = 0, sum = 0;
        HashMap <Integer, Integer> map = new HashMap<> ();
        map.put(0, 1);
        for (int num: nums) {
            sum += num;
            if (map.containsKey(sum - k)) {
                count += map.get(sum - k);
            }
            map.put(sum, map.getOrDefault(sum, 0) + 1);
        }
        return count;
    }
}
Time complexity : O(n). The entire numsnums array is traversed only once.
Space complexity : O(n). Hashmap mapmap can contain up to nn distinct entries in the worst case.
```


We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/combination-sum/ ）

# Description:
 <p>  Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the frequency of at least one of the chosen numbers is different.

The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.
  </p> 
  
**example 1:**
```
Input: candidates = [2,3,6,7], target = 7
Output: [[2,2,3],[7]]
Explanation:
2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
7 is a candidate, and 7 = 7.
These are the only two combinations.
```
**example 2:**
```
Input: candidates = [2,3,5], target = 8
Output: [[2,2,2,2],[2,3,3],[3,5]]
```

**example 3:**
```
Input: candidates = [2], target = 1
Output: []
```

**Constraints:**
```
1 <= candidates.length <= 30
2 <= candidates[i] <= 40
All elements of candidates are distinct.
1 <= target <= 500
```

 ### Solution

```Python
class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        path = []
        self.helper(path, [], candidates, target)
        return path

    def helper(self, path, cur, nums, target):
        if sum(cur) == target:
            path.append(cur)
            return

        if sum(cur) > target or not nums:
            return

        for i in range(len(nums)):
            self.helper(path, cur + [nums[i]], nums[i:], target)


           
Time complexity:  O(N*target) Space complexity: O(target)  N is the number of candidates
```

We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/coin-change/ ）
# Description:
 <p> You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

You may assume that you have an infinite number of each kind of coin.
  </p> 
  
**example 1:**
```
Input: coins = [1,2,5], amount = 11
Output: 3
Explanation: 11 = 5 + 5 + 1
```
**example 2:**
```
Input: coins = [2], amount = 3
Output: -1
```

**example 3:**
```
Input: coins = [1], amount = 0
Output: 0
```

**Constraints:**
```
1 <= coins.length <= 12
1 <= coins[i] <= 231 - 1
0 <= amount <= 104
```

 ### Solution

```Python
class Solution:
    def coinChange(self, coins: List[int], amount: int) -> int:
        if amount == 0:
            return 0

        dp = [amount + 1]*(amount + 1)
        dp[0] = 0

        for coin in coins:
            for item in range(coin, amount + 1):
                dp[item] = min(dp[item], dp[item - coin] + 1)

        return dp[amount] if dp[amount] != amount + 1 else -1
           
Time complexity:  O(N*M) Space complexity:  O(N) N--amount M--len(coins)
```

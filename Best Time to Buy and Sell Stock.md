We can practice this problem by clicking on this link.
>（ https://www.lintcode.com/problem/149/ or https://leetcode.com/problems/best-time-to-buy-and-sell-stock/）
# Description:
 <p> You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.</p> 

**example 1:**
```
Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
```

**example 2:**
```
Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
```

**Constraints:**
```
1 <= prices.length <= 105
0 <= prices[i] <= 104
```

 ### Solution

```Python
from typing import (
    List,
)

class Solution:
    """
    @param prices: Given an integer array
    @return: Maximum profit
    """
    def max_profit(self, prices: List[int]) -> int:
        if not prices:
            return 0
        
        min_stock = float('inf')
        max_profit = 0
        for price in prices:
            min_stock = min(min_stock, price)
            if price > min_stock:
                max_profit = max(max_profit, price - min_stock)
        
        return max_profit

Time complexity: O(N) Space complexity: O(1)
```

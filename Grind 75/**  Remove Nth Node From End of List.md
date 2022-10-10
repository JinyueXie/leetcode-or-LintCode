We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/remove-nth-node-from-end-of-list/ ）
# Description:
 <p> Given the head of a linked list, remove the nth node from the end of the list and return its head.

 </p> 

**example 1:**
```
Input: head = [1,2,3,4,5], n = 2
Output: [1,2,3,5]
```

**example 2:**
```
Input: head = [1], n = 1
Output: []
```

**Constraints:**
```The number of nodes in the list is sz.
1 <= sz <= 30
0 <= Node.val <= 100
1 <= n <= sz
```

 ### Solution 1

```Python
 class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        dummy = ListNode(0, head)
        left = dummy
        right = head

        while n > 0 and right:
            right = right.next
            n -= 1

        while right:
            left = left.next
            right = right.next

        left.next = left.next.next
        return dummy.next


    
Time complexity: O(N)
```

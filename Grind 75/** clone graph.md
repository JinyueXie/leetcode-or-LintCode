We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/clone-graph/ ）
# Description:
 <p> Given a reference of a node in a connected undirected graph.

Return a deep copy (clone) of the graph.

Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

class Node {
    public int val;
    public List<Node> neighbors;
} </p> 
  
**example 1:**
```
Input: adjList = [[2,4],[1,3],[2,4],[1,3]]
Output: [[2,4],[1,3],[2,4],[1,3]]
Explanation: There are 4 nodes in the graph.
1st node (val = 1)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
2nd node (val = 2)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
3rd node (val = 3)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
4th node (val = 4)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
```

**example 2:**
```
Input: adjList = [[]]
Output: [[]]
Explanation: Note that the input contains one empty list. The graph consists of only one node with val = 1 and it does not have any neighbors.
```

**example 3:**
```
Input: adjList = []
Output: []
Explanation: This an empty graph, it does not have any nodes.
```
  
**Constraints:**
```
The number of nodes in the graph is in the range [0, 100].
1 <= Node.val <= 100
Node.val is unique for each node.
There are no repeated edges and no self-loops in the graph.
The Graph is connected and all nodes can be visited starting from the given node.
```

 ### Solution 1

```Python
class Node:
    def __init__(self, val = 0, neighbors = None):
        self.val = val
        self.neighbors = neighbors if neighbors is not None else []

from collections import deque
class Solution:
    def cloneGraph(self, node: 'Node') -> 'Node':
        if not node:
            return None

        cloned = {}
        cloned[node] = Node(node.val, [])
        queue = deque([node])
        while queue:
            cur = queue.popleft()
            for neighbor in cur.neighbors:
                if neighbor not in cloned:
                    cloned[neighbor] = Node(neighbor.val, [])
                    queue.append(neighbor)
                cloned[cur].neighbors.append(cloned[neighbor])

        return cloned[node]
  
Time complexity: O(N) Space complexity: O(N)
```

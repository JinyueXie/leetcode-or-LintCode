We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/implement-trie-prefix-tree/ ）
# Description:

 <p>  A trie (pronounced as "try") or prefix tree is a tree data structure used to efficiently store and retrieve keys in a dataset of strings. There are various applications of this data structure, such as autocomplete and spellchecker.

Implement the Trie class:

Trie() Initializes the trie object.
void insert(String word) Inserts the string word into the trie.
boolean search(String word) Returns true if the string word is in the trie (i.e., was inserted before), and false otherwise.
boolean startsWith(String prefix) Returns true if there is a previously inserted string word that has the prefix prefix, and false otherwise.
  
  </p>    
  
**example 1:**
```
Input
["Trie", "insert", "search", "search", "startsWith", "insert", "search"]
[[], ["apple"], ["apple"], ["app"], ["app"], ["app"], ["app"]]
Output
[null, null, true, false, true, null, true]

Explanation
Trie trie = new Trie();
trie.insert("apple");
trie.search("apple");   // return True
trie.search("app");     // return False
trie.startsWith("app"); // return True
trie.insert("app");
trie.search("app");     // return True
```


**Constraints:**
```
1 <= word.length, prefix.length <= 2000
word and prefix consist only of lowercase English letters.
At most 3 * 104 calls in total will be made to insert, search, and startsWith.
```

 ### Solution

```Python
class Node:
    def __init__(self):
        self.end = False
        self.child = {}

class Trie:
    def __init__(self):
        self.root = Node()

    def find(self, s):
        cur = self.root
        for item in s:
            if item not in cur.child:
                return None
            cur = cur.child[item]
        return cur

    def insert(self, word: str) -> None:
        cur = self.root
        for item in word:
            if item not in cur.child:
                cur.child[item] = Node()
            cur = cur.child[item]
        cur.end = True

    def search(self, word: str) -> bool:
        cur = self.find(word)
        return cur and cur.end

    def startsWith(self, prefix: str) -> bool:
        res = self.find(prefix)
        return bool(res)
           
Time complexity:  O(N) Space complexity: O(N)
```

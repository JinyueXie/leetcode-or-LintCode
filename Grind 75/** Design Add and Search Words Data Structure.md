We can practice this problem by clicking on this link.
>（ https://leetcode.com/problems/design-add-and-search-words-data-structure/ ）
# Description:
 <p> Design a data structure that supports adding new words and finding if a string matches any previously added string.

Implement the WordDictionary class:

WordDictionary() Initializes the object.
void addWord(word) Adds word to the data structure, it can be matched later.
bool search(word) Returns true if there is any string in the data structure that matches word or false otherwise. word may contain dots '.' where dots can be matched with any letter.
  </p> 

**example 1:**
```
Input
["WordDictionary","addWord","addWord","addWord","search","search","search","search"]
[[],["bad"],["dad"],["mad"],["pad"],["bad"],[".ad"],["b.."]]
Output
[null,null,null,null,false,true,true,true]

Explanation
WordDictionary wordDictionary = new WordDictionary();
wordDictionary.addWord("bad");
wordDictionary.addWord("dad");
wordDictionary.addWord("mad");
wordDictionary.search("pad"); // return False
wordDictionary.search("bad"); // return True
wordDictionary.search(".ad"); // return True
wordDictionary.search("b.."); // return True
```

**Constraints:**
```
1 <= word.length <= 25
word in addWord consists of lowercase English letters.
word in search consist of '.' or lowercase English letters.
There will be at most 3 dots in word for search queries.
At most 104 calls will be made to addWord and search.
```

 ### Solution 1

```Python
class TrieNode:
    def __init__(self):
        self.children = {}
        self.end = False


class WordDictionary:
    def __init__(self):
        self.trie = TrieNode()
        self.max_word_length = 0

    def addWord(self, word: str) -> None:
        root = self.trie
        for i in range(len(word)):
            if word[i] not in root.children:
                root.children[word[i]] = TrieNode()
            root = root.children[word[i]]
        root.end = True
        self.max_word_length = max(self.max_word_length, len(word))

    def search(self, word: str) -> bool:
        if len(word) > self.max_word_length:
            return False

        root = self.trie

        def dfs(root, i):
            for j in range(i, len(word)):
                if word[j] != '.' and word[j] not in root.children:
                    return False
                if word[j] == '.':
                    for node in root.children.values():
                        if dfs(node, j + 1):
                            return True
                    return False
                else:
                    root = root.children[word[j]]
            return root.end

        return dfs(root, 0)

    
Add word time complexity: O(len(word)) search: O(N) ## (where N is the number of nodes in the Trie up to depth len(word))
```

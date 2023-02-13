We can practice this problem by clicking on this link.
>（ https://leetcode.com/explore/interview/card/google/67/sql-2/3044/ ）
# Description:
 <p> Every valid email consists of a local name and a domain name, separated by the '@' sign. Besides lowercase letters, the email may contain one or more '.' or '+'.

For example, in "alice@leetcode.com", "alice" is the local name, and "leetcode.com" is the domain name.
If you add periods '.' between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name. Note that this rule does not apply to domain names.

For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.
If you add a plus '+' in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered. Note that this rule does not apply to domain names.

For example, "m.y+name@email.com" will be forwarded to "my@email.com".
It is possible to use both of these rules at the same time.

Given an array of strings emails where we send one email to each emails[i], return the number of different addresses that actually receive mails.</p> 

**example 1:**
```
Input: emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
Output: 2
Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails.
```

**example 2:**
```
Input: emails = ["a@leetcode.com","b@leetcode.com","c@leetcode.com"]
Output: 3
```

**Constraints:**
```
1 <= emails.length <= 100
1 <= emails[i].length <= 100
emails[i] consist of lowercase English letters, '+', '.' and '@'.
Each emails[i] contains exactly one '@' character.
All local and domain names are non-empty.
Local names do not start with a '+' character.
Domain names end with the ".com" suffix.
```

 ### Solution Python

```Python
class Solution:
    def numUniqueEmails(self, emails: List[str]) -> int:
        email_set = set()
        for email in emails:
            local, domain = email.split('@')
            local = local.replace('.', '')
            local = local.split('+')[0]
            print(local)
            email_set.add(local + '@' + domain)
        
        return len(email_set)
    
    
Time complexity : O(N).
Space complexity : O(N).
```

 ### Solution Java
```Java
import java.util.HashSet;

class Solution {
    public int numUniqueEmails(String[] emails) {
        HashSet<String> set =  new HashSet<>();
        
        for(String email: emails) {
            String local = email.split("@")[0];
            String domain = email.split("@")[1];
            local = local.replace(".", "");
            local = local.split("\\+")[0];
            set.add(local + "@" + domain);
        }
        
        return set.size();
    }
}
Time complexity : O(N).
Space complexity : O(N).
```

 ### Solution JavaScript
 ```python
/**
 * @param {string[]} emails
 * @return {number}
 */
var numUniqueEmails = function(emails) {
    let email_set = new Set();
    emails.forEach(function(email) {
        let local = email.split("@")[0].replace(/\./g, "");
        console.log(local);
        const unique_email = local.split("+")[0] + "@" + email.split("@")[1];
        email_set.add(unique_email);
    });
    
    return email_set.size;
};
 ```

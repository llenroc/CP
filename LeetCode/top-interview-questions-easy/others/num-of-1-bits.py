

class Solution:
    def hammingWeight(self, n: int) -> int:
        #  return bin(n)[2:].count('1')
        count = 0
        while n:
            n &= n-1
            count += 1
        return count

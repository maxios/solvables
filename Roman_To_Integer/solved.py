import unittest

# @type of s: string
# @return type: integer
class Solution:
    def romanToInt(self, s: str) -> int:
    	# write your awesome code here

        # reverse the string from small to big
        s_reversed = s[::-1]
        vector = {
            "I":             1,
			"V":             5 ,
			"X":             10,
			"L":             50,
			"C":             100,
			"D":             500,
			"M":             1000
        }

        result = 0;

        for index, letter in enumerate(s_reversed):
            if index > 0 and vector[letter] < vector[s_reversed[index-1]]:
                result -= vector[letter]
            else:
                result += vector[letter]

        return result



class TestStringMethods(unittest.TestCase):

    def test_upper(self):
        result = Solution().romanToInt('LVII')
        self.assertEqual(result, 57)

if __name__ == '__main__':
    result = Solution().romanToInt('LVII')
    print(result)
    unittest.main()

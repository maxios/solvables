# @type of arr: list of list of integers
# @return type: list of list of integers
class Solution:
    def rotateMatrix(self, arr):
    	# write your awesome code here

        #transform columns to rows

        array_length = len(arr)
        array = arr[::-1]
        result = [[0,0,0], [0,0,0], [0,0,0]]
        for y, row in enumerate(array):
            for x, col in enumerate(row):
                print(y, x)
                result[y][x] = array[x][y]

        return result

print(Solution().rotateMatrix([[1, 2, 3], [4, 5,6], [7, 8, 9]]))

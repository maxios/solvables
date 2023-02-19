const assert = require('assert')
const main = require('../index.js')

describe('longestPeak', function () {
	describe('', function () {
		it.only('should return the longest peak length', function () {
			assert.equal(main.longestPeak([1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3]), 6)
		})
	})

	describe('Only one element', function () {
		it('should return 1', function () {
			assert.equal(main.longestPeak([1]), 1)
		})
	})

	describe('empty array', function () {
		it('should return 0', function () {
			assert.equal(main.longestPeak([], 0), 0)
		})
	})

	describe('One small peak', function () {
		it('should return 1', function () {
			assert.equal(main.longestPeak([1, 2, 1]), 3)
		})
	})

	describe('Skewed peak', function () {
		it('should return 1', function () {
			assert.equal(main.longestPeak([1, 2, 1, 1, 1, 1, 1, 2]), 7)
		})
	})
})

const assert = require('assert')
const main = require('./main.js')

assert.equal(main.isValid("(){}[]"), 1)
assert.equal(main.isValid("()){}[]"), 0)
assert.equal(main.isValid(")()){}[]{"), 0)
assert.equal(main.isValid(")))((((()){}[]{"), 0)

console.log("All tests passed successfully!")

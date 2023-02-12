const assert = require('assert');
const main = require('./solved.js');

const params1 = [[1, 2, 3, 4, 5], 2];
const params2 = [[1, 2, 3, 4, 5], 4];
const params3 = [[4], 1];
const params4 = [[-1, 2, 3, 4, -5], 4];
const params5 = [[1], 4];

assert.equal(main.solve(...params1), 9);
assert.equal(main.solve(...params2), 14);
assert.equal(main.solve(...params3), 4);
assert.equal(main.solve(...params4), 8);

try {
  assert.equal(main.solve(...params5), 8);
} catch(e) {
  assert.equal(e.message, "The B is greater than the array length")
} 

console.log('All tests passed successfully!')

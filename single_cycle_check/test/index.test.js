const assert = require('assert');
const main = require('../index.js');

describe('hasSingleCycle', function () {
    describe("valid single cycle", function() {
      it('should return true', function () {
        assert.equal(main.hasSingleCycle([2, 3, 1, -4, -4, 2]), true);
      });
    })

    describe("invalid single cycle", function() {
      it('should return false', function () {
        assert.equal(main.hasSingleCycle([1, 3, 1, -4, -4, 2]), false);
      });
    })
});


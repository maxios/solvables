const assert = require('assert')
const program = require('../index.js')

describe('Node', function () {
  describe('#depthFirstSearch()', function () {
    let graph = new program.Node('A')
    
    before(function () {
      graph.addChild('B').addChild('C').addChild('D');
      graph.children[0].addChild('E').addChild('F');
      graph.children[2].addChild('G').addChild('H');
      graph.children[0].children[1].addChild('I').addChild('J');
      graph.children[2].children[0].addChild('K');
    });

    it('should search with depth-first-search strategy', function () {
      assert.deepEqual(graph.depthFirstSearch([]), ['A', 'B', 'E', 'F', 'I', 'J', 'C', 'D', 'G', 'K', 'H']);
    });
  });
});

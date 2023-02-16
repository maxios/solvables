class Node {
  constructor(name) {
    this.name = name;
    this.children = [];
  }

  addChild(name) {
    this.children.push(new Node(name));
    return this;
  }

  depthFirstSearch(array) {
    // Write your code here.
    array.push(this.name)

    if (this.children.length) {
      for (let i = 0; i < this.children.length; i++) {
        this.children[i].depthFirstSearch(array)
      }

      return array
    }
    
    return array

  }
}

// Do not edit the line below.
exports.Node = Node;


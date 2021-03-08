class Node {
  Node nextNode;
  String data;

  Node(this.data, [this.nextNode]);
}

class NodeList {
  Node head;
  
  NodeList(this.head);

  void insertNode(Node newNode) {
    last().nextNode = newNode;
  }

  Node last() {
    Node tmp = head;
    while(tmp.nextNode != null) {
      tmp = tmp.nextNode;
    }

    return tmp;
  }
}
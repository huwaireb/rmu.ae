#import "@preview/noteworthy:0.2.0": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Data Structures & Algorithms",
  author: "Rashid Almheiri",
  toc-title: "Table of Contents",
)

= Trees (Coding)

== Application

=== Binary Search Tree

```cpp
  struct Node {
    int data;
    Node* left;
    Node* right;
    Node(int val) : data(val), left(nullptr), right(nullptr) {}
  };

  class BST {
    Node* root;

    Node* insert(Node* node, int val) {
      if (node == nullptr) return new Node(val);

      if (val < node->data) {
        node->left = insert(node->left, val);
      } else if (val > node->data) {
        node->right = insert(node->right, val);
      }

      return node;
    }

    Node* remove(Node* node, int val) {
      if (node == nullptr) return nullptr;

      if (val < node->data) {
        node->left = remove(node->left, val);
      } else if (val > node->data) {
        node->right = remove(node->right, val);
      } else {
        if (node->left == nullptr) {
          Node* temp = node->right;
          delete node;
          return temp;
        } else if (node->right == nullptr) {
          Node* temp = node->left;
          delete node;
          return temp;
        } else {
          Node* temp = findMin(node->right);
          node->data = temp->data;
          node->right = remove(node->right, temp->data);
        }
      }

      return node;  
    }


    Node* search(Node* node, int val) {
      if (node == nullptr || node->data == val) return node;

      if (val < node->data) {
        return search(node->left, val); 
      } else {
        return search(node->right, val);
      }
    }

    void inOrder(Node* node) {
      if (node == nullptr) return;

      inOrder(node->left);

      std::cout << node->data << " ";

      inOrder(node->right);
    }

    void preOrder(Node* node) {
      if (node == nullptr) return;

      std::cout << node->data << " ";

      preOrder(node->left);
      preOrder(node->right);
    }

    void postOrder(Node* node) {
      if (node == nullptr) return;

      postOrder(node->left);
      postOrder(node->right);

      std::cout << node->data << " ";      
    }

    Node* findMin(Node* node) {
      while (node->left != nullptr) {
        node = node->left;
      }

      return node;
    }

    Node* findMax(Node* node) {
        while (node->right != nullptr) {
            node = node->right;
        }

        return node;
    }

    void deleteTree(Node* node) {
        if (node != nullptr) {
            deleteTree(node->left);
            deleteTree(node->right);
            delete node;
        }
    }
    
    public:
    BST() : root(nullptr) {}
    ~BST() {
      deleteTree(root);
    }

    void insert(int val) {
      root = insert(root, val);
    }

    void remove(int val) {
      root = remove(root, val);
    }

    Node* search(int val) {
     return search(root, val) 
    }

    void inOrder() { inOrder(root); }
    void preOrder() { preOrder(root); }
    void postOrder() { postOrder(root); }

    Node* findMin() {
      if (root == nullptr) return nullptr;
      return findMin(root);
    }

    Node* findMax() {
      if (root == nullptr) return nullptr;
      return findMax(root);
    }
  };
```

= Queues (Theory)

== Understanding

A queue is a data structure in which items are added at one end and removed from the other end.

First-in, first out (FIFO).

A queue can be implemented asan array or a linked list.
The middle elements of a queue should not be accessed dircetly.

If the queue is nonempty, the function front returns element of the queue. ANd the function back returns the last element in the queue.

Queues are restricted versions of arrays and linked lists.

== Application

#exercise[
  Suppose that queue is a queueType object and the size of the array implementing queue is 100. Also, suppose that the value of queueFront is 50 and the value of queueRear is 99.
]

#solution[
  + What are the values of queueFront and queueRear after adding an element to queue?
    Adding an element retains queueFront as the same value (50), but queueRear will change to the new element.
  
  + What are the values of queueFront and queueRear after removing an element from queue?
    queueFront will become the next value in the queue from the front.
    queueRear will remain same.
]

= Graphs (Theory)

== Understanding

A graph is a pair, $G = (V, E)$, where V is a finite nonempty set, called the vertices of G. And
$E subset V times V$, called the set of edges.

In an undirected graph $G = (V, E)$, elements of E are unordered. In a directed graph, they're ordered.

Let G be a graph. A graph H is called a subgraph of G if every vertex of H is a vertex of G and every
edge is an edge in G.

Two vertices $u$ and $v$ in an undirected graph are called adjacent if there is an edge from one another.

An edge incident on a single vertex is called a loop.

In an undirected graph, if two edges $e_1$ and $e_2$ are associated with the same pair of vertices ${u, v}$. Then
$e_1$ and $e_2$ are called parallel edges.

=== Terms

+ Node
Are the points on a graph, referred to otherwise as vertex.

+ Edge
Are the connections in the graph, from node to node.

+ Undirected Graphs
Graphs in which the edges are reversible,
For example, if we had a graph

A - B, B is adjacent to A and A is adjacent to be

+ Directed Graphs
Graphs in which the edges are not reversible.

For example, if we had a graph

A - B, we need to know the direction of the edge explicitly such that
A -> B, means that B is adjacent to A, but not vice-versa.

+ Adjancey Matrix
It's a matrix of all the vertices as rows where columns are the edges, set as a bit 0 or 1.

+ Degree of a vertex is the number of edges incident to it. (undirected)

+ Indegree of a vertex is the number of edges entering a vertex.
+ Outdegree of a vertex is the number of edges leaving a vertexi.

=== Difference between Graphs and Trees

Trees are hierachial, there is an origin node and the children branch off. Making them acylic by nature.
However, graphs are cylic.

Another comparison is in the connection, trees must always be connected. But graphs not the case

Graphs are heavily used in transportation or social networks. Trees on other hand, in hierachial structures like
data retrieval, sorting or file systems.

=== Traversal

==== Breadth-first Traversal

Queue-based traversal. Walking on same level before moving on to next level. (FIFO)

BFS is more suitable for searching vertices closer to the given source.

BFS is used in various applications such as bipartite graphs, shortest paths, etc.

==== Depth-first Traversal

Stack-based traversal. Proceeds through levels as far as it can until reaching end. (LIFO)

DFS is more suitable when there are solutions away from source.

DFS is used in various applications such as acyclic graphs and finding strongly connected components etc.

=== Topological Ordering

Not possible if you have a cylic dependency as there's no where to start.
Essentially you build ordering backtracking, or using DFS.

=== Djikstra's Shortest Path

You make a table with all the vertices, adding distance and previous visited node for each one.
Placing infinity for distance for everything except the origin.

You also keep track of unvisited and visited nodes.

You start from origin move towards the adjacents. Calculate the distance, adding the previous distance, if at origin 0.
If it's less than the one in the table you replace it, changing the previous node.

If it's more, skip.

Then once your done with adjacents you look at the smallest distance thats unvisited. Go to it, repeat.

=== Minimum Spanning

==== Prims Algorithm
Selected smallest one, then select connected smallest one.

==== Kruskal Algorithm
If they're not connected, we can use Kruskal algorithm.

=== Euler

==== Paths

In a undirected graph. Either every vertex should be even degree, or exactly two vertices with odd degrees.

In a directed graph. At most one vertex has (outdegree) - (indegree) = 1.
And at most one vertex has (indegree) - (outdegree) = 1.
All other vertices have equal in and out degrees.

==== Circuits

In an undirected graph. Every vertex has an even degree.
In a directed graph. Every vertex has equal indegree and outdegree

= Hashtable (Theory)

== Understanding
Hashtables are mappings from keys to values where keys must be hashable to be used as index's.

Hash functions are not perfect, and therefore collisions exist. That's why we have multiple techniques in order
to deal with such conflicts.

=== Load Factor
Load factor is $lambda = frac(n, m)$, ratio of number of keys (n) to the number of slots in table (m)

In open addressing, a higher load factor (closer to 1) increases collisions, leading to longer probe sequences and degraded performance. Typically,  λ ≤ 0.7  is preferred for efficiency.

In chaining, the load factor represents the average number of keys per slot (average list length). Performance degrades gracefully as λ grows, but very high load factors increase search times due to longer lists.

Load factor is used to decide when to resize the hash table (e.g., double the size and rehash when λ exceeds a threshold).

=== Common Hash Functions
There are 3 common hash functions: mid square, folding, and division/modulo arithmetic.

==== Mid Square
In this method, the hash function, H(k), is computed by squaring the identifier. Then using the appropriate number of bits
from the middle of the square to obtain bucket address (hash value). Because the middle bits of a square usually depend
all characters, it is expected that different keys will yield different hash addresses with high probability even if some of
the characters are still the same.

==== Folding
In folding, key X is partitioned into parts such that all the parts, except possibly the last parts, are of equal length. The parts are then added, in some convenient way to obtain the hash value.


==== Divison (Modular Arithmetic)
In this method, the key X is converted into an integer $i_x$. This integer is then divided by the size of the hash table to get the remainder giving the address of X. That is $h(x) = i_x % "HTSize"$

=== Chaining (Open Hashing)
In chaining, the hash table, HT, is an array of pointers.
Therefore, for each j, where $0<j<"HTSize" – 1$, $"HT"[j]$ is a pointer to a linked list.
The size of the hash table, HTSize, is $<=$ to the number of items.

No clustering issues; performance degrades gracefully as load factor increases.
Poor cache performance due to linked list traversals.

==== Item Insertion
For each key X (in the item), we first find h(X) = t, where $0 <t< "HTSize" – 1$. The item with this key is then inserted in the linked list
(which might be empty) pointed to by HT[t]. It then follows that for nonidentical keys X1 and X2, if h(X1) = h(X2),
the items with keys X1 and X2 are inserted in the same linked list and so collision is handled quickly and effectively.
(A new item can be inserted at the beginning of the linked list because the data in a linked list is in no particular order.)

==== Item Searching
Suppose that we want to determine whether an item R with key X is in the hash table. As usual, first we calculate h(X).
Suppose h(X) = t. Then the linked list pointed to by HT [t] is searched sequentially.

==== Item Deletion
To delete an item, say R, from the hash table, first we search the hash table to find where in a linked list R exists.
We then adjust the pointers at the appropriate locations and deallocate the memory occupied by R.

=== Double Hashing
In double hashing, if a collision occurs at h(x), the probe sequence is generated by using the rule:

$
  (H("Key") + i times H_2("Key")) % "TABLE_SIZE"
$

where i = 0, 1, 2, 3, ....

More efficient for high load factors compared to linear or quadratic probing.
Worse cache performance due to non-contiguous memory access.

=== Open Addressing (Closed Hashing)
In open addressing, all keys are stored directly in the hash table array. Collisions are resolved by probing for an alternative empty slot within the table using techniques like linear probing, quadratic probing, or double hashing.

The table size m limits the number of keys to n ≤ m.

Good cache performance due to contiguous memory access.
Performance degrades as the load factor approaches 1.

=== Deletion: Open Addressing
Simply removing a key by marking its slot as empty can break probe sequences for other keys that were inserted after probing past that slot.


=== Linear Probing
Linear probing is an open-addressing collision resolution technique. When a key hashes to an index index h(k) that is already occupied, the algorithm checks the next slot in sequence:

$h(k, i) = (k + i) % "ht"_"size"$

Leads to primary clustering, where consecutive occupied slots form long runs, increasing the average probe length for insertions and searches.

=== Quadratic Probing
Quadratic probing is another open-addressing technique that uses a quadratic function to determine the next slot to probe:
$h(k, i) = (k + i^2) % "ht"_"size"$

Reduces primary clustering by spreading probes more widely.
But, Secondary clustering occurs because all keys hashing to the same index follow the same probe sequence. Also, the table size must be chosen carefully

== Application

#exercise[
  Suppose that the size of the hash table is 101. Suppose that a certain key with the indices 15, 101, 116,0, and 217 are to be inserteda
  in this order into an initially empty hash table. Use modulo arithmetic to find indices in the hash table if
  linear and quadratic probing is used?
] 

#solution[
  + Linear Probing
    $
      h(k, i) = (k + i) mod "HT"_"Size" \
      15 % 101 = 15 \
      101 % 101 = 0 \
      116 % 101 = 15 = (116 + 1) % 101 = 16 \
      0 % 101 = 0 = (0 + 1) % 101 = 1 \
      217 % 101 = 15 = (217 + 1) % 101 = 16 = (217 + 2) % 101 = 17 \
    $
    
  + Quadratic Probing
    $
      h(k, i) = (k + i^2) mod "HT"_"Size" \
      15 % 101 = 15 \
      101 % 101 = 0 \
      116 % 101 = 15 = (116 + 1^2) % 101 = 16 \
      0 % 101 = 0 = (0 + 1^2) % 101 = 1 \
      217 % 101 = 15 = (217 + 1^2) % 101 = 16 = (217 + 2^2) % 101 = 19 \
    $
]

#exercise[
  
]

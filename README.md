# OCaml Functional Programming Practice Questions

This file documents a set of functional programming exercises implemented in OCaml. Each question is accompanied by a brief description.

**Constraints:**

* Use **only recursion** (no loops).
* **No mutation** allowed.
* Rely on **pattern matching**, **tuples**, and **records**.
* Prefer **pure functional style**.

---

## Question 1: Concatenate Two Lists

Write two functions to concatenate two lists:
- `concatenate` (without tail recursion)
- `concatenate_tail` (with tail recursion)

---

## Question 2: Reverse a List

Write a function to reverse a list using recursion:
- `reverse`

---

## Question 3: Check if a List is a Palindrome

Write two functions to check whether a list is a palindrome:
- `is_palindrome` (without tail recursion)
- `is_palindrome_tail` (with tail recursion)

---

## Question 4: Implement Map from Scratch

Write two functions to mimic OCaml’s `List.map`:
- `custom_map` (without tail recursion)
- `custom_map_tail` (with tail recursion)

---

## Question 5: Double the Elements of a List

Use the `custom_map` functions to double each element in a list.

---

## Question 6: Implement Reduce (Fold) from Scratch

Write two functions to implement reduce:
- `custom_reduce` (without tail recursion)
- `custom_reduce_tail` (with tail recursion)

---

## Question 7: Sum the Elements in a List

Use the reduce functions to calculate the sum of a list.

---

## Question 8: Find Maximum Number in a List

Write two functions to find the maximum number:
- `maximum_number` (without tail recursion)
- `maximum_number_tail` (with tail recursion)

---

## Question 9: Flatten a Single-Nested List

Flatten a list of lists (e.g., `[[1;2];[3;4]]`):
- `flatten_single_nested`
- `flatten_single_nested_tail`

---

## Question 10: Flatten a Multi-Nested List

Flatten an arbitrarily nested list of integers using:
- Algebraic data types (`Elem`, `List`)
- Function: `flatten_arbitrary_nested`

---

## Question 11: Implement a Dictionary

Create a dictionary module with the following functions:
- `put` : Add or update key-value pairs
- `get` : Retrieve value by key
- `remove` : Remove key-value pair by key

Perform operations like:
- Adding `"apple"`, `"banana"`, `"cherry"`
- Getting value for `"apple"`
- Updating `"apple"` to new value
- Removing `"banana"`

---

## Question 12: Simplify Symbolic Expressions

Use symbolic algebra expressions (`Const`, `Var`, `Add`, `Mul`) to simplify:

* **Expression:** `Mul(Add(Const 1, Const 2), Const 3)` ≡ `((1 + 2) * 3)`. Simplify and print the result

* **Expression:** `Add(Mul(Add(Const 1, Const 2), Const 3), Var "x")` ≡ `((1 + 2) * 3) + x`. Simplify and print the result

---

## Question 13: Binary Tree Operations

Perform various operations on a binary tree:

* **Inorder Traversal:** Print the inorder traversal of the tree.

* **Sum of Tree:** Calculate the sum of all node values.

* **Multiply Tree Values:** Create a new tree with all values multiplied by `n`.

* **Height of the Tree:** Calculate the height of the tree.

* **Check for Balance:** Check whether the tree is height-balanced.

Also test with an intentionally unbalanced tree.

---

## **Question 14: Partition a List by Predicate**

Split a list into two lists: one containing elements that satisfy a predicate, and one that doesn’t.

* `partition` : Partition of a list into two lists based on a predicate

---

## **Question 15: Zip and Unzip**

* Implement `zip` : Pair elements from 2 lists into a list of pairs (e.g., `[1;2]` and `[a;b]` -> `[(1;a); (2;b)]`)
* Implement `unzip` : Unpair elements from a list of pairs into two lists (e.g., `[(1;a); (2;b)] -> `[1;2]` and `[a;b]`)

---

## **Question 16: Sliding Window Sum**

Given a list of integers and a window size `k`, return a list containing the sum of each sliding window of size `k`.

* `sliding_sum` : Compute the sum of each consecutive window in the list
* `Example`: list = [1; 2; 3; 4; 5] and k = 3 → [(1 + 2 + 3); (2 + 3 + 4); (3 + 4 + 5)] = [6; 9; 12]

---

## **Question 17: Expression Evaluator with Let**

Extend symbolic expressions to include `let` expressions:

* **Expression:** `Let(Var "x", Const 5, Add(Var "x", Const 2))` ≡ `let x = 5 in x + 2`. Simplify and print the result

* **Expression:** `Let(Var "x", Add(Const 1, Const 2), Mul(Var "x", Const 3))` ≡ `let x = (1 + 2) in x * 3`. Simplify and print the result

---


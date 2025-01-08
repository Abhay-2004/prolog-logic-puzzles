
# Prolog Logic Puzzles and Implementations

![Prolog Implementations Overview](./prolog-diagram.svg)

A collection of Prolog programs demonstrating various logic programming concepts, including list operations, grammar parsing, and word puzzles.

## Components

### List Operations

#### Min List (`minlist.pl`)
Compares two lists element by element and creates a new list with the minimum values.

```prolog
?- minlist([1,4,3], [2,3,1], X).
X = [1,3,1]
```

#### Sum Max List (`sumMaxList.pl`)
Calculates the maximum sum between two lists.

```prolog
?- sumMaxList([1,2,3], [4,5], X).
X = 9
```

#### Postfix (`postfix.pl`)
Determines if one list is a postfix of another.

```prolog
?- postfix([1,2,3,4], [3,4]).
true
```

### Grammar Parsing (`setgrammar.pl`)
A context-free grammar implementation for parsing set expressions.

Grammar Rules:
```prolog
g -> s = s
g -> t in s
s -> { l }
s -> { }
l -> t
l -> t, l
t -> a | b | c
```

### Word Puzzles (`words.pl`)
A word puzzle solver using logical constraints and pattern matching.

Features:
- Word length constraints
- Character position matching
- Multiple word relationships

```prolog
?- puzzle(W1, W2, W3, W4).
W1 = "understand"
W2 = "recursions"
W3 = "to"
W4 = "order"
```

## Implementation Details

### Programming Paradigms Used
- Logic Programming
- Declarative Programming
- Pattern Matching
- Backtracking

### Key Features
1. **List Processing**
   - Custom list manipulation
   - Element-wise operations
   - List summation and comparison

2. **Grammar Parsing**
   - Token recognition
   - Recursive descent parsing
   - Context-free grammar implementation

3. **Word Puzzle Solving**
   - Constraint satisfaction
   - Pattern matching
   - Multi-word relationships

## Examples

### List Operations
```prolog
% Min List Example
?- minlist([5,2,8], [3,4,1], Result).
Result = [3,2,1]

% Sum Max Example
?- sumMaxList([1,2,3], [5,5], Max).
Max = 10

% Postfix Example
?- postfix([1,2,3,4], [3,4]).
true
```

### Grammar Parsing
```prolog
% Parse a valid set expression
?- parse(['{', 'a', ',', 'b', '}', '=', '{', 'c', '}']).
true

% Test invalid expression
?- parse(['{', 'a', ',', '}']).
false
```

### Word Puzzle
```prolog
% Find matching words with constraints
?- puzzle(Word1, Word2, Word3, Word4).
Word1 = "understand",
Word2 = "recursions",
Word3 = "to",
Word4 = "order"
```

## Usage

1. Clone the repository
2. Load files into your Prolog interpreter (e.g., SWI-Prolog)
3. Run queries as shown in examples

```bash
$ swipl
?- [minlist].
?- [setgrammar].
?- [words].
```


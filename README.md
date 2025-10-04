# Caesar Cipher

A Ruby implementation of the classic Caesar cipher encryption algorithm.

## Overview

The Caesar cipher is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is shifted a fixed number of positions down or up the alphabet.

## Features

- 🔐 Encrypt strings using Caesar cipher
- 🔄 Handle both uppercase and lowercase letters
- ⚡ Preserve non-alphabetic characters (spaces, punctuation, numbers)
- 🔄 Automatic wrap-around from Z to A
- 🎯 Simple and intuitive API

## Installation

1. Clone this repository:
```bash
git clone https://github.com/your-username/caesar-cipher.git
```
Navigate to the project directory:

```bash
cd caesar-cipher
```
Usage
Basic Example
```ruby
require_relative 'caesar_cipher'

# Encrypt a string with shift factor 5
encrypted = caesar_cipher("Hello, World!", 5)
puts encrypted  # Output: "Mjqqt, Btwqi!"

# You can also use negative shifts
encrypted = caesar_cipher("Hello", -3)
puts encrypted  # Output: "Ebiil"
```

Method Signature
```ruby
def caesar_cipher(string, shift_factor)
```

Parameters:
- string (String): The text to encrypt
- shift_factor (Integer): The number of positions to shift each letter

Returns:
- String: The encrypted text

Examples
```ruby
# Simple encryption
caesar_cipher("abc", 1)           # => "bcd"
caesar_cipher("xyz", 3)           # => "abc"

# Case preservation
caesar_cipher("Hello", 5)         # => "Mjqqt"

# Preserving non-letters
caesar_cipher("Hello, World!", 5) # => "Mjqqt, Btwqi!"

# Large shifts (wrap-around handled automatically)
caesar_cipher("A", 27)            # => "B"
```

How It Works
1. Alphabet Definition: Creates arrays for uppercase ('A'-'Z') and lowercase ('a'-'z') letters
2. Character Processing: Iterates through each character in the input string
3. Case Handling:
  - Uppercase letters are shifted within the uppercase alphabet
  - Lowercase letters are shifted within the lowercase alphabet
  - Non-letter characters remain unchanged
4. Shift Logic: Uses modulo 26 arithmetic to handle wrap-around from Z to A
5. Result Construction: Builds and returns the encrypted string

Algorithm Details
1. Shift Direction: Positive shift factors move letters forward (A→B), negative moves backward (B→A)
2. Wrap-around: Implemented using modulo operator (% 26)
3. Character Preservation: Spaces, punctuation, and numbers are not modified
4. Case Sensitivity: Maintains original letter casing

Example Walkthrough
Input: "Hello, World!" with shift factor 5

```text
H (7) + 5 = 12  → M
e (4) + 5 = 9   → j
l (11) + 5 = 16 → q
l (11) + 5 = 16 → q
o (14) + 5 = 19 → t
,                → ,
(space)          → (space)
W (22) + 5 = 27 → 27 % 26 = 1 → B
o (14) + 5 = 19 → t
r (17) + 5 = 22 → w
l (11) + 5 = 16 → q
d (3) + 5 = 8   → i
!                → !

Result: "Mjqqt, Btwqi!"
```

File Structure
```text
caesar-cipher/
├── caesar_cipher.rb    # Main implementation
├── README.md           # This file
└── (optional test files)
```

Contributing
1. Fork the repository
2. Create a feature branch (git checkout -b feature/amazing-feature)
3. Commit your changes (git commit -m 'Add some amazing feature')
4. Push to the branch (git push origin feature/amazing-feature)
5. Open a Pull Request

License
This project is open source and available under the MIT License.

Historical Context
The Caesar cipher is named after Julius Caesar, who used it in his private correspondence. He would shift letters by 3 positions, so A became D, B became E, etc. This implementation generalizes that concept to work with any shift factor.

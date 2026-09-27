# Caesar Cipher

A right-shift Caesar cipher implemented in Ruby as part of the Odin Project learning cirriculum, with an RSpec test suite validating the encoding against known-correct outputs.

## What it does

`caesar_cipher(string, key)` shifts every letter in `string` forward through the alphabet by `key` positions, wrapping from `z` back to `a`. Case is preserved; spaces and punctuation pass through unchanged.

```ruby
caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
```

Answers can be independently verified at [cryptii.com/pipes/caesar-cipher](https://cryptii.com/pipes/caesar-cipher/).

## Requirements

- Ruby 3.4.6
- RSpec 3.13 (rspec-core 3.13.6, rspec-expectations 3.13.5, rspec-mocks 3.13.8, rspec-support 3.13.7)

RSpec is installed globally on the original machine (bundler not used in this project). Because of this, tests are run with plain `rspec`, not `bundle exec rspec`.

## Running the tests

From the project root:

```
rspec
```

This runs everything under `spec/`. The `.rspec` file in the project / formats the output like other Odin tests instead of the short default `.`/`F`/`*` progress dots.

```
--require spec_helper
--format documentation
```

To run just this file directly:

```
rspec spec/caesar_cipher_spec.rb
```

## Test coverage

Three cases in `spec/caesar_cipher_spec.rb`, each validated against the afforementioned source outside the code:

- The exercise-provided example (`key = 5`)
- A longer, punctuation-heavy sentence (Aristotle quote, `key = 14`)
- A second independent case with different punctuation (Hamlet quote, `key = 3`)

## Authorship

- Code (`caesar_cipher.rb`, `caesar_cipher_spec.rb`) and all comments there within are human-written. 
- This README was written with help from Claude.
# 99 Bottles of Beer - Zig Implementation

This is a simple Zig program that prints the lyrics of the classic song "99 Bottles of Beer" to the console.

## Features
- Uses Zig's standard library for formatted output.
- Implements a loop with a `switch` statement to handle different cases (plural, singular, and zero bottles).
- Adds a small delay (1.5 seconds) between iterations for a more natural singalong experience.

## Requirements
- Zig installed (preferably latest stable version)
- A terminal to run the program

## How to Run
1. Compile the Zig program:
   ```sh
   zig build-exe 99_bottles.zig
   ```
2. Run the executable:
   ```sh
   ./99_bottles
   ```

Alternatively, you can run it directly with the Zig interpreter:
   ```sh
   zig run 99_bottles.zig
   ```

## Explanation of Code
- The program starts with `bottles = 99` and decrements down to 0.
- A `switch` statement adjusts the lyrics appropriately:
  - **Plural case** (more than 1 bottle)
  - **Singular case** (exactly 1 bottle)
  - **Zero case** (no bottles left, prompts to buy more)
- A `std.time.sleep()` call adds a 1.5-second delay to mimic a real-time singing experience.

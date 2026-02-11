# Odin's idiosyncrasies and unique features: Overview

## The 'context', heap and stack

Every procedure in Odin has an implicit first parameter called 'context' that is passed by reference. This parameter is used to store information about the current execution context, such as the current stack frame, the current thread, and other information that may be relevant to the procedure's execution.

### Why is it useful?

Odin by default alocate memory in the heap (global), but supose you have a specific function that is really fast and you want to use temporary memory (Arena), it is still heap but tries to simulate a stack inside it.
If I receive a block with 2000 transactions, if I manually allocate memory for each transaction, the system gets really slow, however, if I use an Arena and put all transacations in it, I can use a single command to free the Arena memory at once.
The context facilitates this, I can just use "context.allocator = arena_allocator" and all functions called (even the libs) will use Arena without knowing it.
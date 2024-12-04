```javascript
function transferOwnership(newOwner) {
  // Check if the transaction sender is the current owner
  require(msg.sender == owner, "Only the owner can transfer ownership");

  // Transfer ownership
  owner = newOwner;
}
```
This code is vulnerable to a reentrancy attack.  The `transferOwnership` function doesn't prevent the caller from re-entering the function before the state update (`owner = newOwner;`) is complete.  A malicious contract could call `transferOwnership` again, potentially overriding the new owner before the change is finalized.
```javascript
function transferOwnership(newOwner) {
  // Check if the transaction sender is the current owner
  require(msg.sender == owner, "Only the owner can transfer ownership");

  // Transfer ownership.  Using a temporary variable and then updating the state
  address oldOwner = owner;
  owner = newOwner;

  // Emit an event to signal the ownership change
  emit OwnershipTransferred(oldOwner, newOwner);
}
```
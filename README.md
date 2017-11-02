# truffle-simple-storage-example
Truffle simple storage example, grab from http://truffleframework.com/tutorials/debugging-a-smart-contract

# Build
```
truffle compile
```

# Develop
```
truffle develop
```

# Console
```
# Build and Deploy
migrate --reset

# Get
SimpleStorage.deployed().then(function(instance){return instance.get.call();}).then(function(value){return value.toNumber()});

# Set 4
SimpleStorage.deployed().then(function(instance){return instance.set(4);});
```

# gd-hax-repo
A repository for GD hax launcher

All hacks use LUA language with custom functions.
## Function list:
```
readInt(address)
readFloat(address)
readString(address, length)
GDMessageBox(title, content, button) # works only on windows 10 (yet)
writeInt(address, value)
writeFloat(address, value)
writeString(address, value)
getBaseAddress(moduleName)
readPointer(base, address1, [address2, ...]) # returns address, not value
writeHexString(address, hexString)
userInputString([message])
userInputInt([message])
```
## Error handling
Errors are handled using global variable `error`.
Its value corresponds to one of following states:

* 0 (or not set): OK
* 1: Error with message (global errorMessage variable must exist)
* Anything else: Error code without message

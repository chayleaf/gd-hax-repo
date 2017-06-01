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
```
## Error handling
Every script should set variable `error`.
Its value corresponds to one of following states:

* 0: OK
* 1: Error with message (global errorMessage variable must exist)
* Anything else: Error code without message

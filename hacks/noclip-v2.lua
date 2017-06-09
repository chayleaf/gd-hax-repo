--the new syntax
mem = MemEditor()

mem.enableCancel() --allow user canceling the hack

base = mem:getBaseAddress("GeometryDash.exe")
if not (mem:writeInt(base+0x1F36C5, 0x0005CCE9) and 
	mem:writeInt(base+0x1F36C9, 0x9000, 2)) then
	error = 1
	message = "Failed to write memory"
else
	message "Dont forget to enable antikick :D"
end

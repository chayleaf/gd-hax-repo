mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
base = mem:getBaseAddress("GeometryDash.exe")
if not (mem:writeInt(base+0x1E6967, 0x9090, 2) and 
	mem:writeInt(base+0x1E6ABE, 0xEB, 1) and
	mem:writeInt(base+0x1E6CC3, 0xEB, 1) and
	mem:writeHexString(base+0x1E6EF1, "909090909090") and
	mem:writeHexString(base+0x1E6EFE, "909090909090") and
	mem:writeHexString(base+0x1EBBF4, "E94A01000090") and
	mem:writeHexString(base+0x1F56BD, "E99D00000090")) then
	error = 1
	message = "Failed to write memory"
end

base = getBaseAddress("GeometryDash.exe")
if not (writeInt(base+0x1E6967, 0x9090, 2) and 
	writeInt(base+0x1E6ABE, 0xEB, 1) and
	writeInt(base+0x1E6CC3, 0xEB, 1) and
	writeHexString(base+0x1E6EF1, "909090909090") and
	writeHexString(base+0x1E6EFE, "909090909090") and
	writeHexString(base+0x1EBBF4, "E94A01000090") and
	writeHexString(base+0x1F56BD, "E99D00000090")) then
	error = 1
	errorMessage = "Failed to write memory"
end

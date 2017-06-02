base = getBaseAddress("GeometryDash.exe")
if not (writeInt(base+0x1F36C5, 0x0005CCE9) and 
	writeInt(base+0x1F36C9, 0x9000, 2)) then
	error = 1
	errorMessage = "Failed to write memory"
end
isToggleable = true

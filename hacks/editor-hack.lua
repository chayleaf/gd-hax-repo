base = getBaseAddress("GeometryDash.exe")
if not (writeHexString(base+0x907A3, "909090909090") and 
	writeHexString(base+0x1CF7B2, "9090") and
  writeHexString(base+0x1E5B40, "EB")) then
	error = 1
	errorMessage = "Failed to write memory"
end
isToggleable = true

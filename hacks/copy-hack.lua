base = getBaseAddress("GeometryDash.exe")
if not writeHexString(base+0x162DA6, "E91E01000090") then
	error = 1
	errorMessage = "Failed to write memory"
end
isToggleable = true

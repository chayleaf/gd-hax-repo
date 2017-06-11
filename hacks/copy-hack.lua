mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
base = mem:getBaseAddress("GeometryDash.exe")
if not mem:writeHexString(base+0x162DA6, "E91E01000090") then
	error = 1
	message = "Failed to write memory"
end

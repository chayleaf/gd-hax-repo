mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
base = mem:getBaseAddress("GeometryDash.exe")
if not (mem:writeHexString(base+0x907A3, "909090909090") and 
	mem:writeHexString(base+0x1CF7B2, "9090") and
  	mem:writeHexString(base+0x1E5B40, "EB")) then
	error = 1
	message = "Failed to write memory"
end

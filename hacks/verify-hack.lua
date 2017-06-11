mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
base = mem:getBaseAddress("GeometryDash.exe")
if not mem:writeHexString(base+0x6D688, "EB") then
  error = 1
  message = "Failed to write memory"
end

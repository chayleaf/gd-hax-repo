base = getBaseAddress("GeometryDash.exe")
if not writeHexString(base+0x6D688, "EB") then
  error = 1
  errorMessage = "Failed to write memory"
end
isToggleable = true

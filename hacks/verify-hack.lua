base = getBaseAddress("GeometryDash.exe")
if not (writeHexString(base+0x6D688, 0xEB)  and
        writeHexString(base+0x6D5AA, 0xEB)  and
        writeHexString(base+0x6D628, 0xEB)) then
  error = 1
	errorMessage = "Failed to write memory"
end
isToggleable = true

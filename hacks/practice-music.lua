mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
base = mem:getBaseAddress("GeometryDash.exe")
if not (mem:writeHexString(base+0x2429E, "EB") and
        mem:writeHexString(base+0x1F61F4, "3F") and
        mem:writeHexString(base+0x1F59C5, "909090909090") and
        mem:writeHexString(base+0x1F6752, "909090909090")) then
        error = 1
        message = "Failed to write memory"
end

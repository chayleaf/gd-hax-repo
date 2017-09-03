mem = MemEditor("GeometryDash.exe")
function background()
  while true do
    coordBase = mem:readPointer(getBaseAddress("GeometryDash.exe")+0x303118, 0x164, 0x220, 0x674)
    if coordBase ~= 0 then
      newXPos = 1000000
      mem:writeFloat(coordBase, newXPos)
    end
  end
end

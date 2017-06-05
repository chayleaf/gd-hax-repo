function background()
  while true do
    coordBase = readPointer(getBaseAddress("GeometryDash.exe")+0x303118, 0x164, 0x220, 0x674)
    if coordBase ~= 0 then
      newXPos = 1000000
      writeFloat(coordBase, newXPos)
    end
  end
end

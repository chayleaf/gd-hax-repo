coordBase = readPointer(getBaseAddress("GeometryDash.exe")+0x303118, 0x164, 0x220, 0x674)
if coordBase == 0 then
  error = 1
  errorMessage = "you arent playing any lvl"
else
  newXPos = userInputInt("Enter new XPos (current is "..tostring(readFloat(coordBase))..")")
  newYPos = userInputInt("Enter new YPos (current is "..tostring(readFloat(coordBase+4))..")")
  writeFloat(coordBase, newXPos)
  writeFloat(coordBase+4, newYPos)
end

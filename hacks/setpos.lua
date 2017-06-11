mem = MemEditor("GeometryDash.exe")
coordBase = mem:readPointer(mem:getBaseAddress("GeometryDash.exe")+0x303118, 0x164, 0x220, 0x674)
if coordBase == 0 then
  error = 1
  errorMessage = "you arent playing any lvl"
else
  newXPos = mem:userInputInt("Enter new XPos (current is "..tostring(mem:readFloat(coordBase))..")")    --todo: move userInput to other class
  newYPos = mem:userInputInt("Enter new YPos (current is "..tostring(mem:readFloat(coordBase+4))..")")
  mem:writeFloat(coordBase, newXPos)
  mem:writeFloat(coordBase+4, newYPos)
end

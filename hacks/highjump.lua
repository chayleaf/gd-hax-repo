mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
if not mem:writeInt(mem:getBaseAddress("GeometryDash.exe")+1916058, 271) then
  error = 1
  errorMessage = "Failed to write memory"
end

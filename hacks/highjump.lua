if writeInt(getBaseAddress("GeometryDash.exe")+1916058, 271) then
  error = 0
else
  error = 1
  errorMessage = "Failed to write memory"
end

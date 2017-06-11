mem = MemEditor("GeometryDash.exe")
mem:enableCancel()
base = mem:getBaseAddress("GeometryDash.exe")
if not mem:writeString(base+0x2B15BC, "http://teamhax.altervista.org/rwh/getGJSongInfo.php") then --more addresses coming
  error = 1
  message = "Failed to write memory"
else
  answer = mem:userInputString("Do you want to download new official songs (From GDW and GDMD)? (yes/no)"
  if answer:sub(0,0) == "y" or answer:sub(0,0) == "Y" then
    os.execute("start http://teamhax.altervista.org/rwh/songs.zip")
  end
end

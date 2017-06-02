base = getBaseAddress("GeometryDash.exe")
if not writeString(base+0x2B15BC, "http://teamhax.altervista.org/rwh/getGJSongInfo.php") then --more addresses coming
  error = 1
  errorMessage = "Failed to write memory"
  --[[answer = userInputString("Do you want to download new official songs (From GDW and GDMD)?"
  if answer:sub(0,0) == "y" or answer:sub(0,0) == "Y" then
    os.execute("start http://teamhax.altervista.org/rwh/songs.zip")
  end]]
end
isToggleable = true

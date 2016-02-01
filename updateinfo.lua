local function user_print_name(user)
   if user.print_name then
      return user.print_name
   end
   local text = ''
   if user.first_name then
      text = user.last_name..' '
   end
   if user.lastname then
      text = text..user.last_name
   end
   return text
end


local function run(msg, matches)
  local senderName = user_print_name(msg.from)
  local termID = matches[2]
  local info = matches[3]
  local text = matches[3]

  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end

  if (matches[1] == "atm") then
	strCommand = "python /home/administrator/NOTIFIKASI/ATM/updateATMInfo.pyc "..senderName..' '..termID..' '..info
  end

  local handle = io.popen(strCommand)
  local text = handle:read("*a")


  return text
end

return {
  description = "Update Informasi ATM ke Portal Kanwil Jakarta III!",
  usage = "!updateinfo atm [terminal ID] [keterangan]\n: update informasi problem ATM\nContoh:\n!updateinfo atm 12345678 Tangan Robot bermasalah karena terlalu letih, besok akan saya tindak lanjuti.",
  patterns = {
    "^!updateinfo (atm) (%d+) +(.+)$"
  }, 
  run = run 
}

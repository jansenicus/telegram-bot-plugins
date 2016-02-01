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
  local userID = msg.from.id
  local senderName = user_print_name(msg.from)
  local locationText = matches[2]
  local text = ""

  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end

  strCommand = "python /home/administrator/NOTIFIKASI/TSI/updatePositionInfo.pyc "..userID..' '..senderName..' '..locationText


  local handle = io.popen(strCommand)
  local text = handle:read("*a")


  return text
end

return {
  description = "Update Informasi Lokasi Pekerja ke Portal Kanwil Jakarta III!",
  usage = "!posisi [lokasi Anda berada]:\n\nContoh:\n!posisi Sendik Jakarta Gatsu\n!posisi Lantai 5, Kanwil Jakarta III",
  patterns = {
    "^!(posisi) +(.+)$"
  }, 
  run = run 
}

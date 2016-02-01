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
  local strCommand = "python /home/administrator/NOTIFIKASI/cetakALECProJakarta3.pyc "..matches[1].." "..senderName
  --local handle = io.popen(strCommand)
  os.execute(strCommand)
  return
end

return {
  description = "Mendapatkan dashboard atmpro/ edcpro atau loanpro",
  usage = "!cetak [atm/ cdm/ edc/ loan]\nMendapatkan dashboard atmpro/ cdmpro/ edcpro atau loanpro\nContoh:\n!cetak atm\n!cetak loan\n!cetak edc\n!cetak cdm",
  patterns = {
    "^!cetak (atm)",
    "^!cetak (cdm)",
    "^!cetak (edc)",
    "^!cetak (loan)"

  }, 
  run = run 
}

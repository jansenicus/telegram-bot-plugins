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
  local telegram_id = msg.from.id
  local telegram_name = user_print_name(msg.from)
  local register = matches[1]
  local genre = matches[2]
  local branchcode = matches[3]
  local text = ""

  --local strCommand = "ls"

  if (register == "reg") then
	strCommand = "python /home/administrator/NOTIFIKASI/TSI/registrasi.pyc "..telegram_id.." "..telegram_name.." "..genre.." "..branchcode
  end

  if (register == "unreg") then
	strCommand = "python /home/administrator/NOTIFIKASI/TSI/unreg.pyc "..telegram_id.." "..telegram_name.." "..genre.." "..branchcode
  end

  local handle = io.popen(strCommand)
  local text = handle:read("*a")


  return text
end

carapakai = {
"Pendaftaran user Telegram untuk dapat menerima notifikasi e-channel per kode cabang\n",
"usage:\n!reg [atm/merchant/brilink/uko/lasmikro/ lasritel] [kode cabang]\n",
"Contoh:\n!reg atm 0062\n!reg merchant 0853\n\n",
"Penonaktifan layanan notifikasi\n",
"usage:\n!unreg [atm/merchant/brilink/uko/lasmikro/ lasritel] [kode cabang]\n",
"Contoh:\n!unreg atm 0062\n!unreg atm 0853"

}

return {
  description = "Registrasi User Telegram Kanwil Jakarta III!",
  usage = carapakai,
  patterns = {
    "^!(reg) (atm) (%d+)",
    "^!(reg) (merchant) (%d+)",
    "^!(reg) (brilink) (%d+)",
    "^!(reg) (uko) (%d+)",
    "^!(reg) (lasmikro) (%d+)",
    "^!(reg) (lasritel) (%d+)",
    "^!(unreg) (atm) (%d+)",
    "^!(unreg) (merchant) (%d+)",
    "^!(unreg) (brilink) (%d+)",
    "^!(unreg) (uko) (%d+)",
    "^!(unreg) (lasmikro) (%d+)",
    "^!(unreg) (lasritel) (%d+)"
  }, 
  run = run 
}

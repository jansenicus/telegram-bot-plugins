-- 08.10.2015 original idea
-- (c) Jansen A. Simanullang
local function run(msg, matches)

	local strCommand = ""

	if matches[2] == "atm" then 

		if matches[3] == "1" then 
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getRekapATM-JAK1.pyc"
		end

		if matches[3] == "2" then 
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getRekapATM-JAK2.pyc"
		end

		if matches[3] == "3" then 
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getRekapATM.pyc"
		end

	end



	local handle = io.popen(strCommand)
	local text = handle:read("*a")


	return text
end

local carapakai = {
	"!rekap atm [3/2/1]\nmengambil status ATM Kanwil Jakarta 3, 2, 1"
  }

return {
	description = "Rekap ATM!",
	usage = carapakai,
	patterns = {
		"^!(rekap) (atm) (%d+)"

		}, 
	run = run 
}

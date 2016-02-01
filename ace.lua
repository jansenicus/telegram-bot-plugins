-- 08.10.2015 original idea
-- (c) Jansen A. Simanullang
-- last update: 26.01.2016 17:06:45
local function run(msg, matches)

	local strCommand = ""

	if (matches[1] == "notif") then

		if (matches[2] == "atm") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMPro.pyc "..matches[3]
		end

		if (matches[2] == "cdm") then
			strCommand = "python /home/administrator/NOTIFIKASI/CDM/statusCDMJak3.pyc"
		end


	end


	if (matches[1] == "best") then

		if (matches[2] == "atm") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getBestAvailability.pyc"
		end

		if (matches[2] == "merchant") then
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/bestmerchant.pyc"
		end

		if (matches[2] == "brilink") then
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/bestbrilink.pyc"
		end

		if (matches[2] == "uko") then
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/bestuko.pyc"
		end

	end

	

	if (matches[1] == "worst")  then

		if (matches[2] == "atm") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getLowestAvailability.pyc"
		end

		if (matches[2] == "merchant") then
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/worstmerchant.pyc"
		end

		if (matches[2] == "brilink") then
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/worstbrilink.pyc"
		end

		if (matches[2] == "uko") then
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/worstuko.pyc"
		end

	end

	if (matches[1] == "status")  then

		if (matches[2] == "under") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getLowestAvailability.pyc "..matches[3]
		end

		if matches[2] == "atm" then 
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATM.pyc "..matches[3]
		end

		if matches[2] == "cdm" then
			strCommand = "python /home/administrator/NOTIFIKASI/CDM/fetchStatusCDM.pyc "..matches[3]
		end

		if (matches[2] == "co") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMCO.pyc "..matches[3]
		end

		if (matches[2] == "cl") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMCL.pyc "..matches[3]
		end

		if (matches[2] == "df") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMDF.pyc "..matches[3]
		end

		if (matches[2] == "epp") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMEPP.pyc "..matches[3]
		end

		if (matches[2] == "nop") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMNOP.pyc "..matches[3]
		end

		if (matches[2] == "off") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMOFF.pyc "..matches[3]
		end

		if (matches[2] == "oos") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMOOS.pyc "..matches[3]
		end

		if (matches[2] == "ops") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMOPS.pyc "..matches[3]
		end

		if (matches[2] == "listrik") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMListrik.pyc "..matches[3]
		end

	end




	if (matches[1] == "co") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMCO.pyc "..matches[2]
	end

	if (matches[1] == "cl") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMCL.pyc "..matches[2]
	end

	if (matches[1] == "cr") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMCR.pyc "..matches[2]
	end

	if (matches[1] == "df") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMDF.pyc "..matches[2]
	end

	if (matches[1] == "epp") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMEPP.pyc "..matches[2]
	end

	if (matches[1] == "nop") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMNOP.pyc "..matches[2]
	end

	if (matches[1] == "off") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMOFF.pyc "..matches[2]
	end

	if (matches[1] == "oos") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMOOS.pyc "..matches[2]
	end

	if (matches[1] == "ops") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMOPS.pyc "..matches[2]
	end

	if (matches[1] == "listrik") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMListrik.pyc "..matches[2]
	end

	if (matches[1] == "vandal") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMVandal.pyc "..matches[2]
	end


	if (matches[1] == "tunai") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMTunai.pyc "..matches[2].." "..matches[3]
	end

	if (matches[1] == "nontunai") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMNonTunai.pyc "..matches[2].." "..matches[3]
	end



	if (matches[1] == "pingok") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMPingOK.pyc "..matches[2]
	end

	if (matches[1] == "pingnotok") then
		strCommand = "python /home/administrator/NOTIFIKASI/ATM/fetchStatusATMPingNotOK.pyc "..matches[2]
	end

	if (matches[1] == "ping") then

		if (matches[2] == "atm") then
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/pingATM.pyc "..matches[3]
		end

	end

	if (matches[1] == "pic") then

		if matches[2] == "atm" then 
			strCommand = "python /home/administrator/NOTIFIKASI/ATM/getAvailATMperPIC.pyc"
		end

		if matches[2] == "merchant" then 
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/getAvailEDCMerchantperPIC.pyc"
		end

		if matches[2] == "brilink" then 
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/getAvailEDCBRILINKperPIC.pyc"
		end

		if matches[2] == "uko" then 
			strCommand = "python /home/administrator/NOTIFIKASI/EDC/getAvailEDCUKOperPIC.pyc"
		end


	end

	if (matches[1] == "tt") then
		strCommand = "python /home/administrator/NOTIFIKASI/TSI/fetchStatusTT.pyc "..matches[2]
	end

	local handle = io.popen(strCommand)
	local text = handle:read("*a")


	return text
end

local carapakai = {
	"!notif atm [Kode Cabang]\n: mengambil status availability ATM\n per uker supervisi\n",
	"!notif cdm\n: mengambil status OFFLINE dan NOP CDM\n supervisi Jakarta III\n",
	"!status atm [TID = terminal ID]\n: mengambil status ATM\n",
	"!status cdm [TID = terminal ID]\n: mengambil status CDM\n",
	"------------------------\n",
	"!tunai [cro/uko] [kode cabang]\n: mengambil status ATM Tunai CRO/UKO\n per kode cabang\n",
	"!nontunai [cro/uko] [kode cabang]\n: mengambil status ATM Non Tunai CRO/UKO\n per kode cabang\n",
	"------------------------\n",
	"!co [cro/uko/ kode cabang]\n: mengambil status ATM\n yang habis uang\n",
	"!cl [cro/uko/ kode cabang]\n: mengambil status ATM\n yang cash low\n",
	"------------------------\n",
	"!cr [cro/ uko]\n: mengambil status ATM uko/cro\n yang mengalami gangguan pada Card Reader\n",
	"------------------------\n",
	"!df [cro/uko/ kode cabang]\n: mengambil status ATM\n yang gagal mengeluarkan uang\n",
	"------------------------\n",
	"!epp [cro/ uko]\n: mengambil status ATM uko/cro\n yang mengalami gangguan pada EPP\n",
	"------------------------\n",
	"!nop [cro/uko/ kode cabang]\n: mengambil status ATM\n yang mati lebih dari 3 hari\n",
	"!off [cro/uko/ kode cabang]\n: mengambil status ATM yang mati lebih dari 1 hari\n",
	"!oos [cro/uko/ kode cabang]\n: mengambil status ATM\n yang mati kurang dari 1 hari\n",
	"------------------------\n",
	"!ops [cro/uko/ kode cabang]\n: mengambil status ATM\n yang mengalami Problem Operasional\n",
	"!listrik [cro/uko/ kode cabang]\n: mengambil status ATM\n yang mengalami Problem Operasional LISTRIK\n",
	"!vandal [cro/uko/ kode cabang]\n: mengambil status ATM\n yang mengalami Problem Operasional VANDALISME\n",
	"------------------------\n",
	"!best [atm/merchant/brilink/uko]\n: mengambil daftar Kanca availability 100%\n",
	"!worst [atm/merchant/brilink/uko]\n: mengambil daftar Kanca availability terendah\n",
	"!status under [percent Availability]\n: mengambil daftar Kanca yang availability ATM di bawah persentase tertentu\n",
	"------------------------\n",
	"!ping atm [TID = terminal ID]\n: tes koneksi ke modem dan ATM\n",
	"!pingok [cro/uko/ kode cabang]\n: mengambil status ATM\n yang kondisi PING OK\n",
	"!pingnotok [cro/uko/ kode cabang]\n: memilah ATM OFFLINE\n kondisi PING NOT OK\n",
	"------------------------\n",
	"!pic atm\n: mengambil availability ATM per PIC Kanwil\n",
	"!pic merchant\n: mengambil availability EDC Merchant per PIC Kanwil\n",
	"!pic brilink\n: mengambil availability EDC Brilink per PIC Kanwil\n",
	"!pic uko\n: mengambil availability EDC UKO per PIC Kanwil\n",
	"------------------------\n",
	"!tt [0/1/3]\n: mengecek trouble ticket jarkom\n0 = Open; 1 = Process; 3 = Pending\n"
  }

return {
	description = "Status ATM/CDM!",
	usage = carapakai,
	patterns = {
		"^!(notif) (atm) (%d+)",
		"^!(notif) (cdm)",
		"^!(status) (atm) (%d+)",
		"^!(status) (cdm) (%d+)",
		"^!(status) (best)",
		"^!(status) (worst)",
		"^!(status) (co) (%w+)",
		"^!(status) (cl) (%w+)",
		"^!(status) (cr) (%w+)",
		"^!(status) (df) (%w+)",
		"^!(status) (epp) (%w+)",
		"^!(status) (nop) (%w+)",
		"^!(status) (off) (%w+)",
		"^!(status) (oos) (%w+)",
		"^!(status) (ops) (%w+)",
		"^!(status) (under) (%d+)",
		"^!(best) (%w+)",
		"^!(worst) (%w+)",
		"^!(tunai) (%w+) (%d+)",
		"^!(nontunai) (%w+) (%d+)",
		"^!(co) (%w+)",
		"^!(cl) (%w+)",
		"^!(cr) (%w+)",
		"^!(df) (%w+)",
		"^!(epp) (%w+)",
		"^!(nop) (%w+)",
		"^!(off) (%w+)",
		"^!(oos) (%w+)",
		"^!(ops) (%w+)",
		"^!(listrik) (%w+)",
		"^!(vandal) (%w+)",
		"^!(pingok) (%w+)",
		"^!(pingnotok) (%w+)",
		"^!(ping) (atm) (%d+)",
		"^!(pic) (atm)",
		"^!(pic) (merchant)",
		"^!(pic) (brilink)",
		"^!(pic) (uko)",
		"^!(tt) (%d+)"
		}, 
	run = run 
}

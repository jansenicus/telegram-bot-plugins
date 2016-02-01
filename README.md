# telegram-bot-plugins
I developed these telegram-bot plugins which are now being used in my workplace

## lua files
#### updateposisi
### registrasi
#### updateinfo
#### rekap
#### infouker
#### help
#### cetak
#### ace


###posisi.lua
####!posisi [your location]:
Example:
!posisi Arizona
!posisi Palo Alto California

### registrasi.lua
Pendaftaran user Telegram untuk dapat menerima notifikasi e-channel per kode cabang

usage:
!reg [atm/merchant/brilink/uko/lasmikro/ lasritel] [kode cabang]

Contoh:
!reg atm 0062
!reg merchant 0853


Penonaktifan layanan notifikasi

usage:
!unreg [atm/merchant/brilink/uko/lasmikro/ lasritel] [kode cabang]

Contoh:
!unreg atm 0062
!unreg atm 0853

!updateinfo atm [terminal ID] [keterangan]
: update informasi problem ATM
Contoh:
!updateinfo atm 12345678 Tangan Robot bermasalah karena terlalu letih, besok akan saya tindak lanjuti.

!rekap atm [3/2/1]
mengambil status ATM Kanwil Jakarta 3, 2, 1

!infouko [4 digit branch code]
:mengambil informasi unit kerja operasional

ketik '!help' akan tampil daftar plugin.
ketik '!help all' akan tampil seluruh format perintah dari setiap plugin.

!cetak [atm/ cdm/ edc/ loan]
Mendapatkan dashboard atmpro/ cdmpro/ edcpro atau loanpro
Contoh:
!cetak atm
!cetak loan
!cetak edc
!cetak cdm

!notif atm [Kode Cabang]
: mengambil status availability ATM
 per uker supervisi

!notif cdm
: mengambil status OFFLINE dan NOP CDM
 supervisi Jakarta III

!status atm [TID = terminal ID]
: mengambil status ATM

!status cdm [TID = terminal ID]
: mengambil status CDM

------------------------

!tunai [cro/uko] [kode cabang]
: mengambil status ATM Tunai CRO/UKO
 per kode cabang

!nontunai [cro/uko] [kode cabang]
: mengambil status ATM Non Tunai CRO/UKO
 per kode cabang

------------------------

!co [cro/uko/ kode cabang]
: mengambil status ATM
 yang habis uang

!cl [cro/uko/ kode cabang]
: mengambil status ATM
 yang cash low

------------------------

!cr [cro/ uko]
: mengambil status ATM uko/cro
 yang mengalami gangguan pada Card Reader

------------------------

!df [cro/uko/ kode cabang]
: mengambil status ATM
 yang gagal mengeluarkan uang

------------------------

!epp [cro/ uko]
: mengambil status ATM uko/cro
 yang mengalami gangguan pada EPP

------------------------

!nop [cro/uko/ kode cabang]
: mengambil status ATM
 yang mati lebih dari 3 hari

!off [cro/uko/ kode cabang]
: mengambil status ATM yang mati lebih dari 1 hari

!oos [cro/uko/ kode cabang]
: mengambil status ATM
 yang mati kurang dari 1 hari

------------------------

!ops [cro/uko/ kode cabang]
: mengambil status ATM
 yang mengalami Problem Operasional

!listrik [cro/uko/ kode cabang]
: mengambil status ATM
 yang mengalami Problem Operasional LISTRIK

!vandal [cro/uko/ kode cabang]
: mengambil status ATM
 yang mengalami Problem Operasional VANDALISME

------------------------

!best [atm/merchant/brilink/uko]
: mengambil daftar Kanca availability 100%

!worst [atm/merchant/brilink/uko]
: mengambil daftar Kanca availability terendah

!status under [percent Availability]
: mengambil daftar Kanca yang availability ATM di bawah persentase tertentu

------------------------

!ping atm [TID = terminal ID]
: tes koneksi ke modem dan ATM

!pingok [cro/uko/ kode cabang]
: mengambil status ATM
 yang kondisi PING OK

!pingnotok [cro/uko/ kode cabang]
: memilah ATM OFFLINE
 kondisi PING NOT OK

------------------------

!pic atm
: mengambil availability ATM per PIC Kanwil

!pic merchant
: mengambil availability EDC Merchant per PIC Kanwil

!pic brilink
: mengambil availability EDC Brilink per PIC Kanwil

!pic uko
: mengambil availability EDC UKO per PIC Kanwil

------------------------

!tt [0/1/3]
: mengecek trouble ticket jarkom
0 = Open; 1 = Process; 3 = Pending

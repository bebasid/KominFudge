# Pegawai Kominfo dan pegawai ISP pro-sensor gak boleh disini
pergi lu kamvret :v 
mending urusin tuh infrastruktur gimana biar koneksi internet lebih cepet dan stabil sama gimana biar data kita aman

## List ISP Indonesia 

### ISP Fiber

#### ISP Rumah
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Catatan Tambahan |
| :---: | :---: | :---: | :---: |
| Indihome | DNS Nasional | Ya |
| CBN | DNS Nasional | Tidak | DNS Cloudflare for Family dan OpenDNS Familysheild aman |
| Biznet Home | DNS Nasional | Tidak | Beberapa kepala IPv4 bisa memakai DNS Indonesia dan beberapa kepala IPv6 aman|
| MyRepublic | DNS Nasional | Tidak |
| FirstMedia | DNS Nasional | Tidak |
| Megavision | DNS Nasional | Tidak |
| MNC | DNS | Tidak |
| Iconnet PLN | DNS | Ya |
| PT Netciti Persada | DNS | Tidak |
| Moratelindo | DNS Nasional | Ya | IP dari DNS Google, OpenDNS, dan Quad9 diblackhole di gateway Oxygen dan beberapa kepala IP tidak menerapkan DNS Nasional (Transparent DNS) <br> DPI Oxygen hanya memblokir situs porno dan judi (Reddit, Vimeo, dkk lewat). |
| Citranet | DNS | Tidak |
| Padi Net | DNS Nasional | Tidak |
| Fiberstream | DNS Nasional | Tidak |
| Balifiber | DNS | Tidak |

#### ISP Kantor
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Catatan Tambahan |
| :---: | :---: | :---: | :---: |
| Astinet | DNS Injection By Transparent Proxy | Ya |  DNS Indonesia aman. Port 53 mengarah ke luar negeri dibelokin ke proxy DNS Telkom sebelum dilanjutkan jadi DNS custom filtering seperti NextDNS dan ControlD tidak akan berjalan jika menggunakan plain dns karena yang terbaca oleh server adalah IP Proxy Telkom daripada IP asli kita |
| Lintasarta | DNS Nasional | Tidak |
| Biznet Metronet/Dedicated | DNS Nasional | Tidak |
| Moratel Dedictated/SOHO | DNS | Ya | IP dari DNS Google, OpenDNS, dan Quad9 diblackhole |
| PT Metrasat | DNS Nasional | Ya |
| PT Pasifik Satelit Nusantara | DNS Nasional | Tidak |
| PT Artha Telekomindo | DNS | Tidak |
| PT Hawk Teknologi Solusi | DNS | Tidak |
| PT Jaringanku Sarana Nusantara | DNS Nasional | Tidak |
| PT Remala Abadi | DNS | Tidak |
| PT iForte Global internet | DNS | Tidak |
| PT Cipta Informatika Cemeriang | DNS | Tidak |
| PT Lexa Net | DNS Nasional | Tidak |
| G-MEDIA | DNS Nasional | Tidak | DNS Cloudflare aman |
| PT Artorius Telemetri Sentosa | DNS Nasional | Tidak |
| D-NET (PT. Core Mediatech) | DNS | Tidak | DNS Indonesia aman |
| PT Sumber Koneksi Indotelematika | DNS | Tidak |
| ProNET | DNS Nasional | Ya |
| PT Media Jaringan Telekomunikasi | DNS Nasional | Tidak |
| PT Sekawan Global Komunika | DNS Nasional | Tidak |

### ISP Mobile
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI |
| :---: | :---: | :---: |
| Telkomsel | DNS Nasional | Ya |
| XL | DNS Nasional | Ya |
| 3 | DNS Nasional | Ya |
| Indosat | DNS | Ya |
| Smartfren | DNS Nasional | Ya |

<p align="center"><img src="./assets/kominfudge-500x250.png" align="center"></p>
<p align="center">"Karena Kominfo ngeblok, ayo kita unblok!"</p>
<p align="center"><sup>DISCLAIMER: KominFudge tidak bertanggung jawab atas kerusakan perangkat anda, ambil dengan risiko anda sendiri.</sup></p>

### Navigasi
- [Pilihan Tertinggi](#pilihan-tertinggi)
- [Memilih ISP yang tidak ketat](#memilih-isp-yang-tidak-ketat)
  - [Level kepayahan unblok memakai DPI](#level-kepayahan-unblok-memakai-dpi)
- [Memilih DNS yang tepat](#memilih-dns-yang-tepat)
  - [Aplikasi² DNS](#aplikasi-aplikasi-dns)
  - [Cara mengganti DNS](#cara-mengganti-dns)
- [Aplikasi² untuk menghilangkan DPI](#aplikasi-aplikasi-untuk-menghilangkan-dpi)
  - [Trik untuk bypass DPI tanpa aplikasi](#trik-untuk-bypass-dpi-tanpa-aplikasi)
  - [Trik untuk bypass DPI memakai router](#trik-untuk-bypass-dpi-di-router)
- [List hosts file](#list-hosts-file)
  - [Cara unblok memakai hosts file](#cara-unblok-memakai-hosts-file)
- [Memilih VPN yang aman](#memilih-vpn-yang-aman)
  - [VPN untuk Advanced Users](#vpn-untuk-advanced-users)
- [Aplikasi² Tor](#aplikasi-aplikasi-tor)

Projek ini tidak akan ada tanpa kontribusi [kalian](/kredit.md)  
*Oh ya,kalau mau kontribusi,liat [ini](/CONTRIBUTING.md)*

## Pilihan Tertinggi[🔝](#navigasi)

DNS: [1.1.1.1](https://1.1.1.1)  
DNS yang Intuitif dan senang untuk dipakai  

DPI: [PowerTunnel](https://github.com/krlvm/PowerTunnel)  
Intuitif dan Open Source  

Filehost: [bebasid](https://bebasid.com)  
Mempunyai hostfile yang banyak isinya  

VPN: [ProtonVPN](https://protonvpn.com)  
Gratis dan Aman

## Memilih ISP yang tidak KETAT[🔝](#navigasi)
ISP adalah provider Internetmu, list ini akan buat kamu lebih tau bagaimana ISP² Indonesia memblokir[;](/sssssssssssssssssssssssssssssssssss.md)

### IP Transit 
<sup><b>Untuk mengecek IP Transit apa yang ISP kita gunakan, silahkan check di https://bgp.tools atau https://bgp.he.net</b></sup><br>

ISP yang menggunakan upstream dibawah ini tidak bisa mengganti DNS dengan cara biasa karena port 53 telah dibelokan ke DNS provider IP Transit masing-masing sebagaimana <a href="https://youtu.be/q1706yrzzws?t=18927">DNS Nasional yang diusulkan di IDNOG 2022.</a><br>
| ASN | Nama | Pemblokiran menggunakan DNS | Catatan | Contoh ISP yang kena |
| :---: | :---: | :---: | :---: | :---: |
| [AS4800](https://bgp.tools/as/4800) | PT Aplikanusa Lintasarta | [DNS Transparan (Port 53 dibelokan ke server)](assets/proofs/png/AS4800-1.png?raw=1) | [Lintasarta membelokan port 53 ke server mereka sendiri sehingga DNS lain selain punya mereka dan ISP masing-masing tidak akan berfungsi jika ISP merutekan servernya melalui Lintasarta walaupun DNS server nya ada di Indonesia](assets/proofs/png/AS4800-2.png?raw=1) | Netciti, CYB Media |

<sup style="text-align:center;">Jika di-sisi ISP anda tidak mematuhi peraturan DNS Nasional tetapi menggunakan IP Transit di atas, maka akan sama saja kena blokir dan harus menggunakan DNS terenkripsi.<br>Atau memakai DNS yang tidak dirutekan melalui IP Transit diatas jika ada</sup><br>

<b>Sedangkan ISP yang menggunakan upstream dibawah ini wajib menggunakan VPN/GoodbyeDPI/Powertunnel</b>
| ASN | Nama | Menggunakan DPI | Catatan |
| :---: | :---: | :---: | :---: |
| [AS4800](https://bgp.tools/as/4800) | PT Aplikanusa Lintasarta | Ya |
| [AS137366](https://bgp.tools/as/137366) | PT iForte Solusi Infotek | [Ya](assets/image.png?raw=1) | Tidak Memblokir Vimeo |
| [AS4761](https://bgp.tools/as/4761) | INDOSAT Internet Network Provider | [Ya](assets/proofs/png/AS23951-AS4761.png?raw=1) |
| [AS58495](https://bgp.tools/as/58495) / [AS138840](https://bgp.tools/as/138840) | PT Parsaoran Global Datatrans (HSP-NET) | [Ya](assets/proofs/png/AS58495-HSP-IX.png?raw=1) |
| [AS17451](https://bgp.tools/as/17451) | BIZNET NETWORKS | Ya |
| [AS4787](https://bgp.tools/as/4787) | PT Cyberindo Aditama (CBN) | Ya |
| [AS138128](https://bgp.tools/as/138128) | PT Solnet Indonesia |[Ya](assets/proofs/png/AS138128-DPI-Proof.png?raw=1) | [Traceroute Proof](assets/proofs/png/AS138128-DPI-Traceroute.png?raw=1) |
| [AS131111](https://bgp.tools/as/131111) | PT Mora Telematika Indonesia (Moratelindo) |[Ya](assets/proofs/png/DPI-Moratel.png?raw=1) |

<sup style="text-align:center;">Jika ISP anda tidak menggunakan DPI tetapi menggunakan upstream diatas, silahkan gunakan tool anti DPI untuk membypass nya</sup><br>

<b>Internet Exchange yang memakai middlebox DPI</b>
| Nama | Menggunakan DPI | CDN yang terkena dampak | Catatan |
| :---: | :---: | :---: | :---: |
| BIX - Biznet Internet Exchange | Ya | [Cloudflare, dan semua CDN yang terhubung dengan BIX](assets/proofs/png/BIX.png?raw=1) | Walaupun pake GoodbyeDPI, Powertunnel, dll tidak akan bisa karena dari sisi Server sudah diblokir oleh Biznet sendiri

### ISP Fiber  
**ISP Rumah**
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Indihome | Ya (Out, Local) | Ya | ? | ISP dari Telkom untuk rumah |
| CBN | Ya | Ya | Tidak |
| Biznet Home | Ya (Out, Local) | Ya | Ya | DPI Biznet juga mengirim TCP RST ke server |
| MyRepublic | Ya (Out, Local) | Ya | Tidak | DPI MyRepublic hanya memblokir situs 18+ |
| FirstMedia | Ya (Out, Local) | Ya | Tidak |
| Megavision | Ya (Out, Local) | Ya/Tidak (Tergantung Routing) | ? | Nama lain: StarNET. Terkena DPI dari upstream PT Parsaoran Global Datatrans |
| MNC | Ya | Ya/Tidak (Tergantung routing) | ? | Terkena DPI dari Upstream iForte |
| Iconnet PLN | Ya | Ya | Ya | DPI Iconnet juga mengirim TCP RST ke server. Pemblokiran DPI 2 arah |
| PT Netciti Persada | Ya | Ya/Tidak (Tergantung Routing) | ? | Kena DNS Nasional dan DPI oleh upstream Lintasarta |
| Oxygen | Ya (Out) | Ya | Tidak | Nama lain: Moratelindo <br /> DoH dan DoT punya Google diblokir <br>Memblokir alt-port DNS 5353 |
| Citranet | Ya | Ya/Tidak (Tergantung routing) | ? | DPI sesuai dengan upstream Citranet. Jika lewat Indosat dan beberapa upstream mereka, maka dijamin kena |
| Padi Net | Ya (Out, Local) | Tidak | ? |
| Fiberstream | Ya (Out, Local) | Tidak | ? | ISP Rumahan punya G-MEDIA |
| Balifiber | Ya | Tidak | ? |
| PT Media Cepat Indonesia | Ya (Out, Local) | Tidak | ? |
| Melsa | Ya (Out, Local) | Tidak | ? | DNS Google aman |

**ISP Kantor**
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Astinet | Ya (DNS Injection) | Ya | ? | ISP dari Telkom untuk kantor |
| Linknet | Ya | Tidak | Tidak | ISP dari Firstmedia untuk kantor |
| Lintasarta | Ya (Out, Local) | Ya | Ya | DPI Lintasarta juga mengirim TCP RST ke server. Pemblokiran dua arah |
| Metronet | Ya (Out) | Ya | Ya | aka Biznet Dedicated |
| PT Metrasat | Ya | Ya | ? |
| PT Pasifik Satelit Nusantara | Ya | Tidak | ? |
| PT Artha Telekomindo | Ya | Tidak | ? |
| PT Hawk Teknologi Solusi | Ya | Tidak | ? |
| PT Jaringanku Sarana Nusantara | Ya (Out, Local) | Tidak | ? | Nama lain: JSN |
| PT. Infotama Lintas Global | Ya (Out, Local) | Tidak | ? |
| PT Remala Abadi | Ya | Tidak | Tidak |
| PT iForte Global internet | Ya | Ya | Tidak | DPI tidak memblokir Vimeo |
| PT Cipta Informatika Cemeriang | Ya | Tidak | ? |
| PT Lexa Net | Ya | Tidak | ? | Nama lain: PT Lexa Global Akses |
| PT Media Sarana Data  | Ya (Out, Local) | Tidak | ? | Nama lain: G-MEDIA |
| PT Artorius Telemetri Sentosa | Ya | Tidak | ? |
| D-NET | Ya | Tidak | ? | Nama lain: PT Core Mediatech <br />Hanya membelokan DNS Google, Cloudflare, dan Quad9 |
| PT Sumber Koneksi Indotelematika | Ya | Tidak | ? |
| ProNET | Ya | Ya/Tidak (Tergantung Routing) | Ya | Nama lain: PT Trisari Data Indonesia<br />Beberapa DNS Publik seperti Cloudflare, Alibaba DNS, dan beberapa DNS Indonesia lokal diblokir. Terkena TCP RST dari upstream Solnet  |
| PT Media Jaringan Telekomunikasi | Ya | Tidak | ? |
| PT Sekawan Global Komunika | Ya | Tidak | ? |
| PT INFORMASI NUSANTARA TEKNOLOGI | Ya | Tidak | ? |
| Orion Cyber Internet | Ya | Tidak | ? | DNS populer seperti Cloudflare, Google, Quad9, Level3, dll dibelokan ke server ISP |
| PT AGTI | Ya (Out, Local) | Tidak | ? | Nama lain: PT. Arjuna Global Teknologi Indonesia |
| PT Parsaoran Global Datatrans | Ya | Ya | Ya (Tetapi lemah) | Nama lain: HSP NET. Pemblokiran DPI dua arah |
| PT Fiber Networks Indonesia | Ya (Out, Local) | Tidak | ? | Nama lain: FIBERNET |
| PT Power Telecom Indonesia | Ya | Ya | ? | DPI tidak memblokir Vimeo |
| PT Solnet Indonesia | Ya | Ya | ? |

### ISP Mobile
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server |  Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Telkomsel / By.U / KartuHalo | Ya (Out, Local) | Ya | Ya | DPI Telkomsel juga mengirim TCP RST ke server |
| XL / Axis / Live On | Ya (Out, Local) | Ya | Ya | DPI XL juga mengirim TCP RST ke server | 
| 3 | Ya | Ya | ? |
| Indosat | Ya | Ya | Tidak |
| Smartfren | Ya (Out, Local) | Ya | Tidak | Memblokir DoH/DoT punya Google |

### Level kepayahan unblok memakai DPI
Seberapa payah cara nge-unblok memakai DPI per-ISP

**DATA INI TIDAK LENGKAP**
| Nama | Kepayahan |
| :---: | :---: |
| Telkomsel / By.U / KartuHalo | Tinggi |
| XL / Axis | Tinggi |
| Biznet | Tinggi |
| Lintasarta | Tinggi |
| PT Parsaoran Global Datatrans | Tinggi |
| Iconnet | Tinggi |
| Indihome | Sedang |
| Indosat | Sedang |
| 3 | Rendah |
| Smartfren | Rendah |
| PT Solnet Indonesia | Rendah |
| CBN | Sedang |
| Firstmedia | Rendah |
| MyRepublic | Rendah |
| Citranet | Rendah |
| PT Power Telecom Indonesia | Rendah |
| Moratel / Oxygen | Rendah |

<sup>Ambil ini semua dengan sedikit garam,semua ISP akan ganti cara blokingnya</sup>


## Memilih DNS yang tepat[🔝](#navigasi)
DNS,cara paling simpel untuk kominfo ngeblokir,tapi DNS bisa [diganti](#cara-mengganti-dns)!  
Nih,list server DNS untuk menggantikan server blokir punya Kominfo

| Nama | Catatan | IPv4 | IPv4 2 | Port Alternatif | IPv6 | IPv6 2 | DoH | DoT |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |  :---: |  :---: |
| Cloudflare DNS | - | `1.1.1.1` | `1.0.0.1` | - | `2606:4700:4700::1111` | `2606:4700:4700::1001` | `cloudflare-dns.com/dns-query`  | `1dot1dot1dot1.cloudflare-dns.com` |
| Cloudflare Secure DNS | Memblokir malware | `1.1.1.2` | `1.0.0.2` | - | `2606:4700:4700::1112` | `2606:4700:4700::1002` | `security.cloudflare-dns.com/dns-query`  | `security.cloudflare-dns.com` |
| Cloudflare Family DNS | Memblokir malware & situs dewasa | `1.1.1.3` | `1.0.0.3` | - | `2606:4700:4700::1113` | `2606:4700:4700::1003` | `family.cloudflare-dns.com/dns-query`  | `family.cloudflare-dns.com` |
| Google DNS | - | `8.8.8.8` | `8.8.4.4` | - | `2001:4860:4860::8888` | `2001:4860:4860::8844` | `dns.google/dns-query` | `dns.google` |
| OpenDNS | - | `208.67.222.222` | `208.67.220.220` | `5353, 443` | ` 2620:119:35::35` | `2620:119:53::53` | `doh.opendns.com/dns-query` | - |
| OpenDNS Familyshield | Memblokir situs dewasa | `208.67.222.123` | `208.67.220.123` | `5353, 443` | - | - | `doh.familyshield.opendns.com/dns-query` | - |
| Quad9 Secured | Memblokir malware | `9.9.9.9` | `149.112.112.112` | `9953` | `2620:fe::fe` | `2620:fe::9` | `dns.quad9.net/dns-query` | `tls://dns.quad9.net` | Memblokir malware |
| Quad9 Secured with ECS | Memblokir malware, mendukung ECS | `9.9.9.11` | `149.112.112.11` | `9953` | `2620:fe::11` | `2620:fe::fe::11` | `dns11.quad9.net/dns-query` | `tls://dns11.quad9.net` |
| Quad9 Unsecured | DNS alternatif Quad9 yang tidak melakukan pemblokiran malware | `9.9.9.10` | `149.112.112.10` | `9953` | `2620:fe::10` | `2620:fe::fe:10` | `dns10.quad9.net/dns-query` | `tls://dns10.quad9.net` |
| Quad9 Unsecured ECS | DNS alternatif Quad9 yang tidak melakukan pemblokiran malware, mendukung ECS | `9.9.9.12` | `149.112.112.12` | `9953` | `2620:fe::12` | `2620:fe::fe:12` | `dns12.quad9.net/dns-query` | `tls://dns12.quad9.net` |
| BebasDNS | DNS punya bebasid, memblokir iklan dan malware | `47.254.192.66` | - | `1753` | `2001:470:36:b90:beba:5::1d` | - | `dns.bebasid.com/dns-query` | `dns.bebasid.com` |
| [AhaDNS](https://blitz-setup.ahadns.com) | - | ? | ? | ? | ? | ? | `blitz.ahadns.com` | ? |
| BlahDNS | - | `45.91.92.121`  | X | - | `2a0e:dc0:6:23::2` | X | `doh-ch.blahdns.com/dns-query` | `dot-ch.blahdns.com` |
| [RethinkDNS](https://rethinkdns.com/configure) | - | ? | ? | - | ? | ? | `basic.rethinkdns.com` | `max.rethinkdns.com` |
| NextDNS | - | `45.90.28.233` | `45.90.30.233` | `5353` | `2a07:a8c0::` | `2a07:a8c0::` | `dns.nextdns.io` | `dns.nextdns.io` |
| LibreDNS | - | `116.202.176.26` | X | - | X | X | `doh.libredns.gr/dns-query` | `dot.libredns.gr` |
| [ControlD](https://controld.com/free-dns) | - | `76.76.2.2` | `76.76.10.2` | - | `2606:1a40::2` | `2606:1a40:1::2` | `freedns.controld.com/p1` | `p1.freedns.controld.com`|
| AdGuard DNS | Memblokir iklan & malware | `94.140.14.14` | `94.140.15.15` | `5353` | `2a10:50c0::ad1:ff` | `2a10:50c0::ad2:ff` | `https://dns.adguard-dns.com/dns-query` | `dns.adguard-dns.com` |
| [DNSWarden](https://dnswarden.com/customfilter.html) | - | ? | ? | ? | ? | ? | ? | ? |

<sup>List lebih lengkap bisa dilihat di [KB Adguard](https://adguard-dns.io/kb/general/dns-providers/) dan [Curl wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS). Bisa juga bikin sendiri dengan [Cloudflare Workers](https://github.com/tina-hello/doh-cf-workers) atau [server sendiri dengan PHP](https://github.com/NotMikeDEV/DoH)</sup>

## Aplikasi-Aplikasi DNS[🔝](#navigasi)
Aplikasi² DNS ini bisa buat memakai DNS lebih senang

> ⚠ **PERHATIAN** ⚠  
> Apabila ISP juga melakukan pemblokiran menggunakan DPI gunakan juga [Aplikasi-aplikasi untuk menghilangkan DPI](#aplikasi-aplikasi-untuk-menghilangkan-dpi)

1.[Nebulo](https://nebulo.app) [Android]  
Aplikasi untuk mengganti DNS di Android dengan mudah  

2.[DNSCloak](https://apps.apple.com/app/id1452162351) [iOS]  
Aplikasi untuk mengganti DNS dan mengatur dnscrypt di iOS  

3.[DNSCrypt](https://dnscrypt.info) [Windows,macOS,Linux]  
DNS untuk selfhost yang dapat melakukan forwarding ke server DNSCrypt & DNS over HTTPS  

4.[SimpleDNSCrypt](https://simplednscrypt.org) [Windows]  
Untuk yang males,ini aplikasi penginstalan DNSCrypt  

5.[DNS Profile Creator](https://dns.notjakob.com/tool.html) [Browser]  
Cara membuat mobileconfig Apple dengan senang  

6.[YogaDNS](https://yogadns.com) [Windows]  
Aplikasi pengganti DNS untuk Windows  

7.[RethinkDNS](https://rethinkdns.com) [Android]  
Aplikasi untuk mengganti DNS dan pemblokiran iklan  

8.[Intra](https://getintra.org) [Android]  
Aplikasi pengganti DNS untuk Android

9.[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) [Windows, macOS, Linux]  
DNS untuk selfhost dengan adblock, encrypted upstream dan downstream  

10.[Stubby](https://github.com/getdnsapi/stubby) [Windows, macOS, Linux]  
DNS untuk selfhost yang dapat melakukan forwarding ke server DNS over TLS

11.[InviZible](https://github.com/Gedsh/InviZible) [Android]  
Aplikasi android untuk DNS dan Tor

## Cara mengganti DNS[🔝](#navigasi)
Nah,tu udah ada List DNS,gimana makenya?

### Di Android
1.Settings>Other Wireless Connections>Private DNS  
2.Masukkan [hostname dns](#memilih-dns-yang-tepat) dan pencet Save

### Di iOS

1.Settings>Wi-Fi>*wifi*  
2.Ketuk ikon (i)  
3.Ganti IP Adress jadi Static dan masukkan [hostname dns](#memilih-dns-yang-tepat) di kolom DNS

### Di Windows
#### Windows 10 dan kebawah 
1. Control Panel>Network and Internet>Network and Sharing Center>Connections>Properties  
2. Pencet Internet Protocol Version 4 (TCP/IPv4) 2 kali  
3. Ganti "Obtain DNS server address automatically" ke "Use the following DNS server addresses"  
4. Masukkan [hostname dns](#memilih-dns-yang-tepat) di kolom DNS dan pencet Ok

#### Windows 11
1. Buka Settings di Windows 11, Pergi ke Network & Internet dan pilih Properties    
2. Dibagian DNS server assignment, klik tombol Edit  
3. Ganti Automatic menjadi Manual  
4. di Preferred DNS, masukan 1.1.1.1/8.8.8.8/9.9.9.9 dan di Alternate masukan 1.0.0.1/8.8.4.4/149.112.112.112
5. di Preferred dan Alternate DNS Encryption, pilih opsi Encrypted only (DNS-over-HTTPS)  
6. Klik Save

### Di macOS
1. System Preferences>Network>Wi-Fi>Advanced>DNS  
2. Pencet tombol “+” dan masukkan [hostname dns](#memilih-dns-yang-tepat) di kolom DNS,pencet Ok dan Apply

### Di Linux
1. Buka Terminal  
2. Jalankan perintah `nano /etc/resolv.conf` untuk mengedit file `/etc/resolv.conf`  
3. Ubah isi file menjadi seperti berikut (ganti `<hostname dns>` menjadi salah satu hostname dns [disini](#memilih-dns-yang-tepat))
```
nameserver <hostname dns>
nameserver <hostname dns>
```

### Di browser berbasis Chromium
1.Settings>Privacy and Security  
2.Masukin [hostname dns](#memilih-dns-yang-tepat) di kolom DNS

### Di Firefox
1.Settings>Network Settings  
2.Masukin [hostname dns](#memilih-dns-yang-tepat) di kolom DNS

#### *Gimana cara tau DNSnya berhasil*  
Pergi ke situs [DNSLeakTest](https://dnsleaktest.com) atau [BrowserLeaks](https://browserleaks.com/dns) untuk ngetes  
Jika DNS ISP muncul daripada DNS yang diset, silahkan download [DNSCrypt](https://dnscrypt.info) atau [SimpleDNSCrypt](https://simplednscrypt.org)

## Aplikasi-Aplikasi untuk menghilangkan DPI[🔝](#navigasi)
Sekarang banyak [ISP](#memilih-isp-yang-tidak-ketat) blokirnya itu dengan Deep packet inspection,tapi DPI bisa dihilangkan dengan mudah dengan aplikasi² ini

> ⚠ **PERHATIAN** ⚠  
> Jangan lupa untuk mengganti [DNS](#aplikasi-aplikasi-dns) terlebih dahulu atau menggunakan [Hosts file](#list-hosts-file) apabila [ISP](#memilih-isp-yang-tidak-ketat) juga menggunakan DNS untuk pemblokiran

> ℹ️ **Info**  
> Kami juga menyediakan config untuk aplikasi & ISP di folder [ini](/dpi-circumvention-config)


1.[GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI) [Windows]  
Aplikasi CLI untuk hilangkan DPI

2.[GreenTunnel](https://github.com/SadeghHayeri/GreenTunnel) [Windows,macOS,Linux]  
Aplikasi GUI untuk hilangkan DPI

3.[PowerTunnel](https://github.com/krlvm/PowerTunnel) [Windows,macOS,Linux,[Android](https://github.com/krlvm/PowerTunnel-Android)]  
Aplikasi GUI untuk hilangkan DPI (2)

4.[SNI-Mask](https://github.com/macronut/SNI-Mask) [Windows]  
proxy untuk menghilangkan DPI

5.[Accesser](https://github.com/URenko/Accesser) [Windows,macOS,Linux]  
*???*

6.[GhosTCP](https://github.com/macronut/ghostcp) [Windows]  
Mengamankan koneksi TCP

7.[sniffjoke](https://github.com/vecna/sniffjoke) [Linux]  
Mengamankan wiretap/sniff/IDS

8.[SpoofDPI](https://github.com/xvzc/SpoofDPI) [macOS,Linux]  
NgeSpoof DPImu

9.[Zapret](https://github.com/bol-van/zapret/blob/master/docs/readme.eng.md) [Linux, FreeBSD]  
DPI Circumvention Tool

10.[DPITunnel](https://github.com/zhenyolka/DPITunnel-cli) [Linux,[Android](https://github.com/zhenyolka/DPITunnel-android)]  
CLI untuk Linux

11.[Geneva](https://github.com/kkevsterrr/geneva) [Linux]  
DPI Circumvention Tool berbasis AI  

### Trik untuk bypass DPI tanpa aplikasi[🔝](#navigasi)

#### Di Linux
*Drop TCP RST*
Jalankan perintah `sudo iptables -I INPUT -p tcp --tcp-flags ALL RST,ACK -j DROP` atau `sudo firewall-cmd --direct --add-rule ipv4 filter INPUT 0 -p tcp --tcp-flags ALL RST,ACK -j DROP` (untuk distro yang menggunakan firewalld, seperti Fedora dan OpenSUSE) di terminal\
Tetapi perintah diatas tidak akan bekerja apabila ISP juga mengirim paket TCP RST ke server (daftar ISP bisa dilihat di kolom Mengirim TCP RST ke server pada tabel diatas)

### Trik untuk bypass DPI di router[🔝](#navigasi)

#### OpenWRT
Silahkan ikut tutorial ini https://github.com/bebasid/bebasit/blob/master/docs/openwrt-tutorial.md

### MikroTik
Silahkan ikut tutorial ini https://github.com/bebasid/bebasit/blob/master/docs/mikrotik-tutorial.md

## List hosts file[🔝](#navigasi)
Nah,Hostfile (atau Filehost)....agak payah nge-eksplanasi xD  
Nih List hostfile untuk yang big brain

| List | Alternatif |
| :---: | :---: |
| [bebasid](https://raw.githubusercontent.com/bebasid/bebasid/master/releases/hosts) |
| [mul14](https://gist.githubusercontent.com/mul14/eb05e88fcec5bb195cbb/raw/611c0693c460fc5bd7037c6d9d43fa6c0ce4fd7c/hosts) |
| [tumblr](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=2556197#gistcomment-2556197) |
| [Netflix](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3235083#gistcomment-3235083) | [2](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324456#gistcomment-3324456) |
| [nhentai](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324461#gistcomment-3324461) |
| [Binance](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3727848#gistcomment-3727848) |
| [Reddit](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3878656#gistcomment-3878656) |
| [Steam](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=4250815#gistcomment-4250815) | [2](https://pastebin.com/auhuXvAD) |

## Cara unblock memakai hosts file[🔝](#navigasi)
Nah,filenya ada...sekarang apa?

### Di Windows
1.Salin text didalam hostfile yang kamu pilih  
2.Buka File Explorer dan pergi ke `C:\Windows\System32\drivers\etc`  
3.Paste text ke file "hosts"

### Di Android

#### ROOT:
1.Salin text didalam hostfile yang kamu pilih  
2.Buka File Explorer dan pergi ke `/system/etc`  
3.Paste text ke file "hosts"

#### NON-ROOT:
1.Salin text didalam hostfile yang kamu pilih  
2.Buat file dan paste textnya didalam file itu  
3.Install [Virtual Hosts](https://github.com/x-falcon/Virtual-Hosts) atau [Host Go](https://play.google.com/store/apps/details?id=dns.hosts.server.change)  
4.Pencet "Select Host File"/"Import HOSTS file" dan pencet file yang kamu buat

## Memilih VPN yang aman[🔝](#navigasi)
Ah VPN,cara yang tersenang untuk melewati blok apabila cara diatas tidak work, *Tapi* jangan download VPN yang gak aman & gak terpercaya!  
Nih,coba liat VPN aman yang lebih baik dipake daripada vpn yang gak terpercaya di list ini

| Nama | Positif | Negatif | Server |
| :---: | :---: | :---: | :---: |
| [Mullvad](https://mullvad.net/) | VPN Berbayar yang aman | Berbayar | 867 |
| [ProtonVPN](https://protonvpn.com) | VPN "gratis" yang "aman" | Tidak ada Split-tunneling di sub gratis dan [ini](https://arstechnica.com/information-technology/2021/09/privacy-focused-protonmail-provided-a-users-ip-address-to-authorities) | 100 |
| [Windscribe](https://windscribe.com) | Ada Split-tunneling & banyak fitur lainnya | 15GB per bulan dan [ini](https://arstechnica.com/gadgets/2021/07/vpn-servers-seized-by-ukrainian-authorities-werent-encrypted) | 15 |
| [ExpressVPN](https://expressvpn.com) | Cepat | Tidak begitu aman dan berbayar | 148 |
| [Psiphon](https://psiphon.ca) | Open Source | ? | ? |
| [OVPN](https://ovpn.com) | **Aman** | Berbayar | 102 |

### VPN untuk Advanced Users[🔝](#navigasi)
VPN dibagian ini memerlukan konfigurasi, jika anda hanya ingin VPN yang Out of the box, silahkan abaikan ini

| Nama | Deskripsi |
| :---: | :---: |
| [OpenVPN](https://openvpn.net) | VPN system that implements techniques to create secure point-to-point or site-to-site connections |
| [Wireguard](https://wireguard.com) | Seperti OpenVPN |
| [Softether](https://softether.org) | Seperti OpenVPN(?) |

## Aplikasi-Aplikasi Tor[🔝](#navigasi)
Nah,ini bagian extrim,memakai Tor

1.[Tor Browser](https://www.torproject.org) [Windows,macOS,Linux,Android]  
Browser officialnya tor  

2.[Orbot](https://guardianproject.info/apps/org.torproject.android) [Android]  
Proxy dengan Tor  

3.[Onion Browser](https://onionbrowser.com) [iOS]  
browser tor untuk iOS  

4.[InviZible](https://github.com/Gedsh/InviZible) [Android]  
Aplikasi android untuk DNS dan Tor

<p align="center">Share projek ini</p>
<div id="sosial">
 <p align="center">
  <a href="https://twitter.com/intent/tweet?text=https%3A//github.com/MeFinity/KominFudge%20%23BlokirKominfo%20%23BlokirGakPakeMikir"><img src="https://img.shields.io/badge/Twitter-blue?style=flat&logo=twitter&logoColor=white"/></a>
  <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/MeFinity/KominFudge"><img src="https://img.shields.io/badge/Facebook-1877F2?style=flat&logo=facebook&logoColor=white"/></a>
 </p>
</div>

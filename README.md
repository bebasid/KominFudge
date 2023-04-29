<div align="center">
 <img src="./assets/kominfudge-500x250.png">
 <p>Tolak diblokir, Ayo unblokir!</p>
</div>

KominFudge adalah list cara dan aplikasi untuk unblokir censorship dari Kominfo
>DISCLAIMER: KominFudge tidak bertanggung jawab atas kerusakan perangkat anda, ambil dengan risiko anda sendiri.

## Navigasi
* [Memilih DNS yang Tepat](#memilih-dns-yang-tepat)
  - [Aplikasi DNS](#aplikasi-dns) WIP
  - [Cara Menggunakan DNS](#cara-menggunakan-dns) WIP

## Memilih DNS yang Tepat[🔝](#navigasi)
| Nama | Catatan | IPv4 | IPv4 2 | Port Alternatif | IPv6 | IPv6 2 | DoH | DoT |
|---|---|---|---|---|---|---|---|---|
| ⭐ BebasDNS | DNS punya bebasid, memblokir iklan dan malware | `47.254.192.66` | - | `1753` | `2001:470:36:b90:beba:5::1d` | - | `dns.bebasid.com/dns-query` | `dns.bebasid.com` |
| Cloudflare DNS | - | `1.1.1.1` | `1.0.0.1` | - | `2606:4700:4700::1111` | `2606:4700:4700::1001` | `cloudflare-dns.com/dns-query` | `1dot1dot1dot1.cloudflare-dns.com` |
| Cloudflare Secure DNS | Memblokir malware | `1.1.1.2` | `1.0.0.2` | - | `2606:4700:4700::1112` | `2606:4700:4700::1002` | `security.cloudflare-dns.com/dns-query` | `security.cloudflare-dns.com` |
| Cloudflare Family DNS | Memblokir malware & situs dewasa | `1.1.1.3` | `1.0.0.3` | - | `2606:4700:4700::1113` | `2606:4700:4700::1003` | `family.cloudflare-dns.com/dns-query` | `family.cloudflare-dns.com` |
| Quad9 Secured | Memblokir malware | `9.9.9.9` | `149.112.112.112` | `9953` | `2620:fe::fe` | `2620:fe::9` | `dns.quad9.net/dns-query` | `tls://dns.quad9.net` |
| Quad9 Secured with ECS | Memblokir malware, mendukung ECS | `9.9.9.11` | `149.112.112.11` | `9953` | `2620:fe::11` | `2620:fe::fe::11` | `dns11.quad9.net/dns-query` | `tls://dns11.quad9.net` |
| Quad9 Unsecured | DNS alternatif Quad9 yang tidak melakukan pemblokiran malware | `9.9.9.10` | `149.112.112.10` | `9953` | `2620:fe::10` | `2620:fe::fe:10` | `dns10.quad9.net/dns-query` | `tls://dns10.quad9.net` |
| Quad9 Unsecured ECS | DNS alternatif Quad9 yang tidak melakukan pemblokiran malware, mendukung ECS | `9.9.9.12` | `149.112.112.12` | `9953` | `2620:fe::12` | `2620:fe::fe:12` | `dns12.quad9.net/dns-query` | `tls://dns12.quad9.net` |
| Mullvad | - | - | - | - | - | - | `https://doh.mullvad.net/dns-query` | `doh.mullvad.net` |
| Mullvad Adblocking | Memblokir Iklan | - | - | - | - | - | `https://adblock.doh.mullvad.net/dns-query` | `adblock.doh.mullvad.net` |
| [NextDNS](https://nextdns.io) | Bisa Diatur | `45.90.28.233` | `45.90.30.233` | `5353` | `2a07:a8c0::` | `2a07:a8c0::` | `dns.nextdns.io` | `dns.nextdns.io` |
| [ControlD](https://controld.com/free-dns) | Bisa Diatur | `76.76.2.2` | `76.76.10.2` | - | `2606:1a40::2` | `2606:1a40:1::2` | `freedns.controld.com/p1` | `p1.freedns.controld.com` |

<sub>List lebih lengkap bisa dilihat di [KB Adguard](https://adguard-dns.io/kb/general/dns-providers/) dan [cURL wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS).</sub>

# END OF FILE
MeFinity masih reorganisasi :3c

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

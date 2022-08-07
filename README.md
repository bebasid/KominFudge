<p align="center">
<img src="https://cdn.discordapp.com/attachments/973116913045602334/1004377183902507079/kom.png" width="500">
</p>
<p align="center">Karna Kominfo ngeblok situs,ayo kita unblok lagi</p>

>DISCLAIMER: kominfudge tidak bertanggung jawab atas kerusakan perangkat anda,ambil dengan risiko anda sendiri

### Navigasi

- [Pilihan Tertinggi](#pilihan-tertinggi)

- [Memilih ISP yang tidak ketat](#memilih-isp-yang-tidak-ketat)

- [Memilih VPN yang aman](#memilih-vpn-yang-aman)

- [Memilih DNS yang tepat](#memilih-dns-yang-tepat)
  - [Aplikasi² DNS](#aplikasi-aplikasi-dns)
  - [Cara mengganti DNS](#cara-mengganti-dns)

- [Aplikasi² untuk menghilangkan DPI](#aplikasi-aplikasi-untuk-menghilangkan-dpi)
  - [Trik untuk bypass DPI tanpa aplikasi](#trik-untuk-bypass-dpi-tanpa-aplikasi)

- [List Filehost](#list-host-file)
  - [Cara unblok memakai Filehost](#cara-unblok-memakai-filehost)

- [Aplikasi² Tor](#aplikasi-aplikasi-tor)

- [Kredit](#kredit)

## Pilihan Tertinggi

Unbloking dengan DNS: [1.1.1.1](https://1.1.1.1)

Unbloking dengan DPI: [PowerTunnel](https://github.com/krlvm/PowerTunnel)

Unbloking dengan Filehost: [bebasid](https://bebasid.com)

VPN: [Windscribe](https://windscribe.com)

## Memilih ISP yang tidak KETAT
ISP adalah provider Internetmu,list ini akan buat kamu lebih tau bagaimana ISP² Indonesia memblokir
> Ambil ini dengan sedikit garam,semua ISP akan ganti cara blokingnya

| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI |
| :---: | :---: | :---: |
| Indihome | Ya | Ya |
| CBN | Ya | Tidak |
| Biznet | Ya | Tidak |
| MyRepublic | Ya | Tidak |
| FirstMedia | Ya | Tidak |
| Megavision | Ya | Tidak |
| MNC | Ya | Tidak |
| PT Remala Abadi | Ya | Tidak |
| PT iForte Global internet | Ya | Tidak |
| lconnect PLN | Ya | Ya |
| Telkomsel | Ya | Ya |
| XL | Ya | Ya |
| 3 | Ya | Ya |
| Indosat | Ya | Ya |
| Smartfren | Ya | Ya |
| PT Cipta Informatika Cemeriang | Ya | Tidak |
| Oxygen | Ya | Tidak |
| Astinet | Ya | Ya |
| Lintasarta | Ya | Tidak |
| Citranet | Ya | Tidak |

## Memilih VPN yang aman
Ah,Virtual Private Network,cara yang tersenang untuk melewati blok

*Tapi* jangan pergi ke Playstore dan download VPN yang gak aman!
Nih,coba liat VPN yang kamu suka di list ini

| Nama | Positif | Negatif | Server |
| :---: | :---: | :---: | :---: |
| [Mullvad](https://mullvad.net/) | VPN Berbayar yang aman | Berbayar | 867 |
| [ProtonVPN](https://protonvpn.com) | VPN "gratis" yang "aman" | Tidak ada Split-tunneling di sub gratis | 100 |
| [Windscribe](https://windscribe.com) | Ada Split-tunneling & banyak fitur lainnya | 15GB per bulan dan [ini](https://arstechnica.com/gadgets/2021/07/vpn-servers-seized-by-ukrainian-authorities-werent-encrypted) | ~15 |
| [IVPN](https://ivpn.net) | VPN yang fokusnya itu privasi | Berbayar | 77 |
| [OpenVPN](https://openvpn.net) | Open source | Disediakan oleh individu | ? |
| [ExpressVPN](https://expressvpn.com) | Cepat | Tidak begitu aman dan berbayar | 148? |
| [Wireguard](https://wireguard.com) | Seperti OpenVPN | Disediakan oleh individu | ? |
| [Softether](https://www.vpngate.net/en/download.aspx) | Seperti OpenVPN(?) | Disediakan oleh individu | ? |
| [Psiphon](https://psiphon.ca) | Open Source | ? | ? |

## Memilih DNS yang tepat
Nih,list DNS yang bisa dipakai

| Nama | IPv4 | IPv4 2 | IPv6 | IPv6 2 | DoH | DoT |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| Cloudflare DNS | `1.1.1.1` | `1.0.0.1` | `2606:4700:4700::1111` | `2606:4700:4700::1001` | `cloudflare-dns.com/dns-query`  | `1dot1dot1dot1.cloudflare-dns.com` |
| Google DNS | `8.8.8.8` | `8.8.4.4` | `2001:4860:4860::8888` | `2001:4860:4860::8844` | `dns.google/dns-query` | `dns.google` |
| Quad9 | `9.9.9.9` | `149.112.112.112` | `2620:fe::fe` | `2620:fe::9` | `dns.quad9.net/dns-query` | `tls://dns.quad9.net` |
| [AhaDNS](https://blitz-setup.ahadns.com) | ? | ? | ? | ? | `blitz.ahadns.com` | ? |
| BlahDNS | `45.91.92.121`  | X | `2a0e:dc0:6:23::2` | X | `doh-ch.blahdns.com/dns-query` | `dot-ch.blahdns.com` |
| [RethinkDNS](https://rethinkdns.com/configure) | ? | ? | ? | ? | `basic.rethinkdns.com` | `max.rethinkdns.com` |
| NextDNS | `45.90.28.233` | `45.90.30.233` | `2a07:a8c0::` | `2a07:a8c0::` | `dns.nextdns.io` | `dns.nextdns.io` |
| LibreDNS | `116.202.176.26` | X | X | X | `doh.libredns.gr/dns-query`  | `dot.libredns.gr` |
| [ControlD](https://controld.com/free-dns) | `76.76.2.2` | `76.76.10.2` | `2606:1a40::2` | `2606:1a40:1::2` | `freedns.controld.com/p1` | `p1.freedns.controld.com` |

List lebih lengkap bisa dilihat di [KB Adguard](https://adguard-dns.io/kb/general/dns-providers/) dan [Curl wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS). Bisa juga bikin sendiri dengan [Cloudflare Workers](https://github.com/tina-hello/doh-cf-workers) atau [server sendiri dengan PHP](https://github.com/NotMikeDEV/DoH)

## Aplikasi-Aplikasi DNS
Aplikasi² DNS ini bisa buat memakai DNS lebih senang

1.[Nebulo](https://nebulo.app) [Android]
>Aplikasi untuk mengganti DNS dengan mudah

2.[DNSCloak](https://apps.apple.com/app/id1452162351) [iOS]
>Aplikasi untuk mengganti DNS dan mengatur dnscrypt dengan mudah

3.[DNSCrypt](https://dnscrypt.info) [Windows,macOS,Linux]
>DNS untuk selfhost sendiri

4.[SimpleDNSCrypt](https://simplednscrypt.org) [Windows]
>Untuk yang males,ini aplikasi penginstalan DNSCrypt dengan senang

5.[DNS Profile Creator](https://dns.notjakob.com/tool.html) [Browser]
>Cara membuat mobileconfig Apple dengan senang

6.[YogaDNS](https://yogadns.com) [Windows]
>Client DNS untuk Windows

7.[RethinkDNS](https://rethinkdns.com) [Android]
>Aplikasi untuk mengganti DNS dengan mudah...lagi

8.[Intra](https://getintra.org) [Android]
>dan lagi.........

9.[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) [Windows, macOS, Linux]
>DNS untuk selfhost dengan adblock, encrypted upstream dan downstream .

## Cara mengganti DNS
Nah,tu udah ada List DNS,gimana makenya?

### Di Android
1.Settings>Other Wireless Connections>Private DNS

2.Masukkan [hostname dns](#memilih-dns-yang-tepat) dan pencet Save

### Di iOS

1.Settings>Wi-Fi>*wifi*

2.Ketuk ikon (i)

3.Ganti IP Adress jadi Static dan masukkan [hostname dns](#memilih-dns-yang-tepat) di kolom DNS

### Di Windows
#### Windows 10 dan dibawahnya
1.Control Panel>Network and Internet>Network and Sharing Center>Connections>Properties

2.Pencet Internet Protocol Version 4 (TCP/IPv4) 2 kali

3.Ganti "Obtain DNS server address automatically" ke "Use the following DNS server addresses"

4.Masukkan [hostname dns](#memilih-dns-yang-tepat) di kolom DNS dan pencet Ok

5.Lalu, cek konfigurasi anda di https://dnsleaktest.com dan klik 'extended test'

6.Jika DNS ISP muncul daripada DNS yang diset, silahkan download DNSCrypt

#### Windows 11
1. Buka Settings di Windows 11, Pergi ke Network & Internet dan pilih Properties

2. Dibagian DNS server assignment, klik tombol Edit

3. Ganti Automatic menjadi Manual

4. di Preferred DNS, masukan 1.1.1.1 dan di Alternate masukan 8.8.8.8

5. di Preferred dan Alternate DNS Encryption, pilih opsi Encrypted only (DNS-over-HTTPS)

6. Klik Save

### Di macOS
1.System Preferences>Network>Wi-Fi>Advanced>DNS

2.Pencet tombol “+” dan masukkan [hostname dns](#memilih-dns-yang-tepat) di kolom DNS,pencet Ok dan Apply

### Di Linux
1.Buka Terminal

2.Jalankan perintah `nano /etc/resolv.conf` untuk mengedit file `/etc/resolv.conf`

3.Ubah isi file menjadi seperti berikut (ganti `<hostname dns>` menjadi [salah satu hostname dns](#memilih-dns-yang-tepat))
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

## Aplikasi-Aplikasi untuk menghilangkan DPI
Sekarang banyak [ISP](#memilih-isp-yang-tidak-ketat) blokirnya itu dengan Deep packet inspection,tapi DPI bisa dihilangkan dengan mudah dengan aplikasi² ini, jangan lupa untuk mengganti DNS terlebih dahulu dengan [aplikasi untuk menggunakan DNS](#aplikasi-aplikasi-dns) apabila ISP juga menggunakan DNS untuk pemblokiran

1.[GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI) [Windows]
> Aplikasi CLI untuk hilangkan DPI

2.[GreenTunnel](https://github.com/SadeghHayeri/GreenTunnel) [Windows,macOS,Linux]
> Aplikasi yang ada GUI untuk hilangkan DPI

3.[PowerTunnel](https://github.com/krlvm/PowerTunnel) [Windows,macOS,Linux,[Android](https://github.com/krlvm/PowerTunnel-Android)]
> Aplikasi yang ada GUI untuk hilangkan DPI (2)

4.[SNI-Mask](https://github.com/macronut/SNI-Mask) [Windows]
>proxy untuk menghilangkan DPI

5.[Accesser](https://github.com/URenko/Accesser) [Windows,macOS,Linux]
>solving SNI RST

6.[GhosTCP](https://github.com/macronut/ghostcp) [Windows]
>Mengamankan koneksi TCP

7.[sniffjoke](https://github.com/vecna/sniffjoke) [Linux]
>Mengamankan wiretap/sniff/IDS

8.[SpoofDPI](https://github.com/xvzc/SpoofDPI) [macOS,Linux]
>DPI Spoofer

9.[Zapret](https://github.com/bol-van/zapret/blob/master/docs/readme.eng.md) [Linux, FreeBSD]
>DPI Circumvention Tool

10.[DPITunnel](https://github.com/zhenyolka/DPITunnel-cli) [Linux,[Android](https://github.com/zhenyolka/DPITunnel-android)]
>CLI untuk Linux

11.[Geneva](https://github.com/kkevsterrr/geneva) [Linux]
>DPI Circumvention Tool berbasis AI

## Trik untuk bypass DPI tanpa aplikasi

### Di Linux
#### Drop TCP RST
Jalankan perintah `sudo iptables -I INPUT -p tcp --tcp-flags ALL RST,ACK -j DROP` di terminal\
Tetapi perintah diatas tidak akan bekerja apabila ISP juga mengirim paket TCP RST ke server

## List Host file

| List | Alternatif |
| :---: | :---: |
| [bebasid](https://raw.githubusercontent.com/bebasid/bebasid/master/releases/hosts) |
| [mul14](https://gist.githubusercontent.com/mul14/eb05e88fcec5bb195cbb/raw/611c0693c460fc5bd7037c6d9d43fa6c0ce4fd7c/hosts) |
| [tumblr](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=2556197#gistcomment-2556197) |
| [Netflix](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3235083#gistcomment-3235083) | [2](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324456#gistcomment-3324456) |
| [nhentai](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324461#gistcomment-3324461) |
| [Binance](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3727848#gistcomment-3727848) |
| [Reddit](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3878656#gistcomment-3878656) |
| [Steam](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=4250815#gistcomment-4250815) |

## Cara unblok memakai Filehost
Nah,filenya ada...sekarang apa?

### Di Windows

1.Salin text didalam hostfile yang kamu pilih

2.Buka File Explorer dan pergi ke `C:\Windows\System32\drivers\etc`

3.Paste text ke file "host"

### Di Android

#### ROOT:
1.Salin text didalam hostfile yang kamu pilih

2.Buka File Explorer dan pergi ke `/system/etc`

3.Paste text ke file "host"

#### NON-ROOT:
1.Salin text didalam hostfile yang kamu pilih

2.Buat file dan paste textnya didalam file itu

3.Install [Virtual Hosts](https://github.com/x-falcon/Virtual-Hosts)

4.Pencet "Select Host File" dan pencet file yang kamu buat

## Aplikasi-Aplikasi Tor
Nah,ini bagian extrim,memakai Tor

1.[Tor Browser](https://www.torproject.org) [Windows,macOS,Linux,Android]
>browser officialnya tor

2.[Orbot](https://guardianproject.info/apps/org.torproject.android) [Android]
>proxy dengan Tor

3.[Onion Browser](https://onionbrowser.com) [iOS]
>browser tor di iOS

## Kredit
### <a href="https://example.com"><img src="https://github.com/ghost.png" width="50px" /></a> REDACTED
Provider data ISP

Update tutorial DNS

Obfuscate

Kebanjiran fakta 😭
### <a href="https://github.com/lepz0r"><img src="https://github.com/lepz0r.png" width="50px" /></a> lepz0r
Mengganti layout data ISP

Suggest VPN + DNS

Suggest ganti Layout DNS

Update tutorial

Memberi informasi DoH
### <a href="https://t.me/ZeroExa"><img src="https://cdn5.telegram-cdn.org/file/EBLahx5E3LtoYchJMRhPkR58ozhX-9PWWPHi_9c1uE8QZbMwNTGrpbLDM_xkpg6tlScvthh-5Sd-yIqanFYj7So1Z1cURQ12UNm6TLB37NWdad3fh9JONGu-7vrp8I2Hxs7oCevg8b1qYSFd-sh4kzjg7Q1yCEa_fq70D8QKOtuo3InAcoTc5x_yEVRLX_x9tLITkTb6ZNFosUEB-_LilagRob3EPQmWgy_10OiEzlOVT-24Kbeobho78GygXGrQNL5kYCakM6o2Set7Ic7JxJGiaEyIzE-iXWacZaOIOsocJlr-Fr7sm3Wuwpj56dxS6Q_mTer6zSZhFZ9VaCL_fw.jpg" width="50px" /></a> ZEROEX5
Suggest DNS + VPN

Suggest Aplikasi DNS

Memberi lebih banyak informasi DoH (curl)
### <a href="https://t.me/andreas_ding2"><img src="https://cdn5.telegram-cdn.org/file/g5GA0N419exMvXQ4TlRIkqCm_EOmELi1iG2UNbKw328XoKvjFgK-iIUMpgRghiZx5BlgkM6GUy41I8eDiFO3T_T1sk9wC6ieS3lrt7Vqsr0wWwzCCf8jwDfudgxLGMBWs1frylQ9SO8UvBs6aZqcO7N2_rdKdzCp7OXNTmCL4GsJBs_lAfQloJx5rIKRvWNMkKhJsnefKoK0E94lcJ1ZrqV09aUkwzZbclgnHHHmYlu2uFHwpV-t6NE1T2CJ48cex8dC3ZjmzRcy1V3sofDe8vwLsNQrpKZ9vGFQbhFLXFk3KaLwzyLIHLnPHSt616b-2-Q9FIsN1MRkOWfHlVrU1w.jpg" width="50px" /></a> A\ndreas\Ding 🇺🇦🇷🇺
Suggest aplikasi DNS

Suggest VPN
### <a href="https://github.com/RacBallonMC"><img src="https://github.com/racballonmc.png" width="50px" /></a> RacBallonMC
Fix cloudflare DNS
### <a href="https://privacytools.io"><img src="https://www.privacytools.io/img/logo.svg" width="300px" /></a>
Provider data VPN + Aplikasi DNS
### <a href="https://bebasid.com"><img src="https://github.com/bebasid/bebasid/blob/master/dev/resources/logo-black.png" width="69px" /></a> bebasid
dokumen-dokumen berguna

### <a href="https://github.com/neneeen"><img src="https://github.com/neneeen.png" width="50px" /></a> neneeen

Update DNS

Nambah aplikasi DNS

# Mau nambah sesuatu di list?
silahkan pull request atau ping saya di server discord bebasid (.Me.)

setiap perubahan itu penting walaupun sekecil ~kontolmu~


## Gak tau mau nge-add apa tapi masih mau berkontribusi?
nih gw buatin roadmap lagi :v 

- [x] Aplikasi Tor
- [ ] Aplikasi Proxy
  - [ ] List proxy
  - [ ] Cara memakai proxy
- [ ] Nambah DNS
- [ ] Nambah VPN
- [ ] [etc](https://en.wikipedia.org/wiki/Internet_censorship_circumvention)

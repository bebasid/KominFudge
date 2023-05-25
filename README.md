<div align="center">
 <img src="/assets/icon/KominFudge-compressed.png">
 <p>"Tolak diblokir, Ayo <i>unblokir!</i>"</p>
 <p><b>KominFudge Panduan Pemula</b></p>
</div>

 <p align="center" xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/bebasid/KominFudge">KominFudge</a> dari <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/bebasid">bebasid</a> di lisensikan dibawah <a href="http://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p>

## Tentang KominFudge

KominFudge adalah sebuah panduan tentang penyensoran Internet di Indonesia dan cara untuk menembusnya agar dapat mengakses Internet secara bebas.

Panduan ini terdiri atas dua dokumen yaitu:

- **Panduan pemula**, yang menjelaskan cara dan aplikasi untuk menembus penyensoran Internet pada umumnya, diurut dari cara termudah hingga tersulit, serta rekomendasi dari KominFudge.

- [**Panduan mahir**](Advanced-README.md), yang menjelaskan bagaimana cara penyensoran Internet di Indonesia bekerja secara rinci dan metode menembus penyensoran yang lebih rumit.

Silahkan baca dari awal sampai akhir, atau lihat bagian "Navigasi" untuk memilih bagian tertentu yang ingin dibaca.

>DISCLAIMER: KominFudge tidak bertanggung jawab atas kerusakan perangkat Anda, gunakan informasi yang diberikan dengan risiko Anda sendiri.

>CATATAN: Versi panduan ini masih dalam pengembangan awal karena sedang melalui tahap reorganisasi.

## Navigasi

- [Tentang KominFudge](#tentang-kominfudge)
- [Memilih layanan VPN yang aman](#memilih-layanan-vpn-yang-aman)
- [Memilih layanan DNS yang tepat](#memilih-layanan-dns-yang-tepat)
  - [Aplikasi pengatur DNS](#aplikasi-pengatur-dns)
  - [Mengganti layanan DNS secara manual](#mengganti-layanan-dns-secara-manual)
- [Aplikasi penembus DPI](#aplikasi-penembus-dpi)
  - [Menembus DPI tanpa aplikasi](#menembus-dpi-tanpa-aplikasi)
- [Daftar *hosts file*](#daftar-hosts-file)
  - [Menggunakan *hosts file*](#menggunakan-hosts-file)
- [Menggunakan Tor](#menggunakan-tor)
- [Berkontribusi kepada KominFudge](#berkontribusi-kepada-kominfudge)

## Memilih layanan VPN yang aman

Menggunakan layanan VPN, gratis maupun berbayar, adalah pilihan yang populer dan termudah untuk menembus penyensoran Internet di banyak negara termasuk di Indonesia. Tetapi tidak semua layanan VPN memiliki reputasi yang baik.

Berikut ini adalah rekomendasi KominFudge untuk layanan VPN yang memiliki reputasi yang baik:

| Nama | Catatan | Harga |
|:---:|:---:|---|
| [ProtonVPN](https://protonvpn.com) | - | Freemium |
| [Cloudflare WARP](https://one.one.one.one) | - | Freemium |
| [Windscribe](https://windscribe.com) | Terpengaruh oleh [BIX](Advanced-README.md#internet-exchange) | Freemium |
| [Mullvad](https://mullvad.net/) | - | Berbayar |
| [OVPN](https://ovpn.com) | - | Berbayar |
| [ExpressVPN](https://expressvpn.com) | - | Berbayar |
| [Psiphon](https://psiphon.ca) | - | Freemium |

[Kembali ke "Navigasi"](#navigasi)

## Memilih layanan DNS yang tepat

DNS adalah sebuah sistem yang menerjemahkan nama domain suatu situs menjadi alamat-alamat IP situs tersebut. Penyensoran umumnya dilakukan dengan memblokir layanan DNS selain yang disediakan oleh ISP dan/atau memodifikasi data DNS agar tidak dapat mengakses situs yang diblokir.

Layanan DNS yang menyensor dapat diganti dengan layanan DNS alternatif berikut ini:

| Nama | Catatan | Alamat IPv4 Utama | Alamat IPv4 Cadangan | Port Alternatif | Alamat IPv6 Utama | Alamat IPv6 Cadangan | DNS-over-HTTPS (DoH) | DNS-over-TLS (DoT) |
|---|---|---|---|---|---|---|---|---|
| ⭐ BebasDNS | Layanan DNS oleh bebasid, [memblokir iklan dan *malware*](https://github.com/bebasid/bebasdns#daftar-blokir-dns--08092022) | `147.139.211.126` | `47.254.192.66` | `1753` | `2001:470:36:b90:beba:5::1d` | `2001:470:36:9be:ba5::1d` | `dns.bebasid.com/dns-query` | `dns.bebasid.com` |
| BebasDNS Malware | [Memblokir *malware*](https://github.com/bebasid/bebasdns#daftar-blokir-dns--08092022) | - | - | - | - | - | `dns.bebasid.com/dns-query/malware` | `malware.dns.bebasid.com` |
| BebasDNS Unfiltered | [Tanpa pemblokiran apapun]() | - | - | - | - | - | `dns.bebasid.com/dns-query/unfiltered` | `unfiltered.dns.bebasid.com` |
| BebasDNS Family | [Memblokir *malware* & situs dewasa](https://github.com/bebasid/bebasdns#daftar-blokir-dns--08092022) | - | - | - | - | - | `dns.bebasid.com/dns-query/family` | `family.dns.bebasid.com` |
| Cloudflare DNS | Layanan DNS oleh Cloudflare | `1.1.1.1` | `1.0.0.1` | - | `2606:4700:4700::1111` | `2606:4700:4700::1001` | `cloudflare-dns.com/dns-query` | `1dot1dot1dot1.cloudflare-dns.com` |
| Cloudflare Secure DNS | [Memblokir *malware*](https://one.one.one.one/family) | `1.1.1.2` | `1.0.0.2` | - | `2606:4700:4700::1112` | `2606:4700:4700::1002` | `security.cloudflare-dns.com/dns-query` | `security.cloudflare-dns.com` |
| Cloudflare Family DNS | [Memblokir *malware* & situs dewasa](https://one.one.one.one/family) | `1.1.1.3` | `1.0.0.3` | - | `2606:4700:4700::1113` | `2606:4700:4700::1003` | `family.cloudflare-dns.com/dns-query` | `family.cloudflare-dns.com` |
| AdGuard DNS | [Memblokir iklan & *malware*](https://adguard-dns.io) | `94.140.14.14` | `94.140.15.15` | `5353` | `2a10:50c0::ad1:ff` | `2a10:50c0::ad2:ff` | `dns.adguard-dns.com/dns-query` | `dns.adguard-dns.com` |
| Google DNS | Layanan DNS oleh Google | `8.8.8.8` | `8.8.4.4` | - | `2001:4860:4860::8888` | `2001:4860:4860::8844` | `dns.google/dns-query` | `dns.google` |
| Quad9 Secured | Layanan DNS oleh Quad9, [memblokir malware](https://www.quad9.net/service/service-addresses-and-features) | `9.9.9.9` | `149.112.112.112` | `9953` | `2620:fe::fe` | `2620:fe::9` | `dns.quad9.net/dns-query` | `dns.quad9.net` |
| Quad9 Secured with ECS | [Memblokir malware, mendukung ECS](https://www.quad9.net/service/service-addresses-and-features) | `9.9.9.11` | `149.112.112.11` | `9953` | `2620:fe::11` | `2620:fe::fe::11` | `dns11.quad9.net/dns-query` | `dns11.quad9.net` |
| Quad9 Unsecured | [Tanpa pemblokiran apapun](https://www.quad9.net/service/service-addresses-and-features) | `9.9.9.10` | `149.112.112.10` | `9953` | `2620:fe::10` | `2620:fe::fe:10` | `dns10.quad9.net/dns-query` | `dns10.quad9.net` |
| Quad9 Unsecured ECS | [Tanpa pemblokiran apapun, mendukung ECS](https://www.quad9.net/service/service-addresses-and-features) | `9.9.9.12` | `149.112.112.12` | `9953` | `2620:fe::12` | `2620:fe::fe:12` | `dns12.quad9.net/dns-query` | `dns12.quad9.net` |
| Mullvad | Layanan DNS oleh Mullvad | - | - | - | - | - | `doh.mullvad.net/dns-query` | `doh.mullvad.net` |
| Mullvad Adblocking | [Memblokir iklan](https://github.com/mullvad/dns-blocklists) | - | - | - | - | - | `adblock.doh.mullvad.net/dns-query` | `adblock.doh.mullvad.net` |
| OpenDNS | Layanan DNS oleh OpenDNS | `208.67.222.222` | `208.67.220.220` | `5353, 443` | `2620:119:35::35` | `2620:119:53::53` | `doh.opendns.com/dns-query` | - |
| OpenDNS Familyshield | [Memblokir situs dewasa](https://www.opendns.com/home-internet-security) | `208.67.222.123` | `208.67.220.123` | `5353, 443` | - | - | `doh.familyshield.opendns.com/dns-query` | - |
| UncensoredDNS | - | `91.239.100.100` | `- | - | `2001:67c:28a4::` | - | `anycast.uncensoreddns.org/dns-query` | `anycast.uncensoreddns.org` |
| [NextDNS](https://nextdns.io) | Bisa Diatur | Kustom | Kustom | - | Kustom | Kustom | Kustom | Kustom |
| [ControlD](https://controld.com/free-dns) | Bisa Diatur | Kustom | Kustom | - | Kustom | Kustom | Kustom | Kustom |
| [DNSWarden](https://dnswarden.com/customfilter.html) | Bisa Diatur | - | - | - | - | - | Kustom | Kustom |
| [RethinkDNS](https://rethinkdns.com/configure) | Bisa Diatur | - | - | - | - | - | Kustom | Kustom |

<sub>List lebih lengkap bisa dilihat di [KB Adguard](https://adguard-dns.io/kb/general/dns-providers/) dan [cURL wiki (DoH)](https://github.com/curl/curl/wiki/DNS-over-HTTPS).</sub>

[Kembali ke "Navigasi"](#navigasi)

## Aplikasi pengatur DNS

Aplikasi berikut ini dapat mempermudah Anda mengatur layanan DNS yang digunakan, dengan beberapa juga dibekali fitur tambahan:

> ⚠ **PERHATIAN** ⚠  
> Apabila [ISP](Advanced-README.md#isp-dan-metode-pemblokiran-yang-digunakan) juga melakukan pemblokiran menggunakan DPI gunakan juga [Aplikasi ini](#aplikasi-penembus-dpi)

1. [SimpleDNSCrypt](https://simplednscrypt.org) [Windows]
>Simple DNSCrypt adalah alat manajemen sederhana untuk mengkonfigurasi [dnscrypt-proxy](https://github.com/jedisct1/dnscrypt-proxy) pada sistem Windows.
2. [RethinkDNS](https://rethinkdns.com/app) [Android]
>RethinkDNS adalah cara termudah untuk memantau aktivitas aplikasi, menghindari sensor internet, memblokir iklan, dan pelacak di perangkat Android Anda.
3. [DNSCloak](https://apps.apple.com/app/id1452162351) [iOS]
>DNSCloak mengimplementasikan protokol DNSCrypt & DNS-over-HTTPS/2 (DoH) ke iOS.
4. [Nebulo](https://nebulo.app) [Android]
>Nebulo adalah klien dns-over-https, dns-over-tls, and dns-over-http-over-quic yang gratis, open-source, tanpa root, dan ringan, untuk Android.
5. [YogaDNS](https://yogadns.com) [Windows]
>YogaDNS secara otomatis mencegat permintaan DNS di tingkat sistem dan memungkinkan Anda memprosesnya melalui server DNS yang ditentukan pengguna menggunakan protokol modern dan aturan fleksibel.
6. [DNSecure](https://github.com/kkk669/DNSecure) [iOS]
>DNSecure adalah alat konfigurasi DoT dan DoH untuk iOS.

[Kembali ke "Navigasi"](#navigasi)

## Mengganti layanan DNS secara manual
Berikut cara menggunakan DNS secara manual

### Di Android

>1. Peraturan > Koneksi Nirkabel Lainnya > DNS Pribadi
>2. Masukkan [hostname dns](#memilih-layanan-dns-yang-tepat) dan pencet Simpan

### Di iOS

>1. Peraturan > Wi-Fi > *wifi*
>2. Ketuk ikon (i)
>3. Ganti IP Adress jadi Static dan masukkan [hostname dns](#memilih-layanan-dns-yang-tepat) di kolom DNS

Atau bisa memakai sesuatu seperti [Secure DNS profile creator](https://dns.notjakob.com/tool.html)

### Di Windows
#### Windows 10 kebawah

>1. Control Panel > Network and Internet > Network and Sharing Center > Connections > Properties
>2. Pencet Internet Protocol Version 4 (TCP/IPv4) 2 kali
>3. Ganti "Obtain DNS server address automatically" ke "Use the following DNS server addresses"
>4. Masukkan [hostname dns](#memilih-layanan-dns-yang-tepat) di kolom DNS dan pencet Ok

#### Windows 11

>1. Settings > Network & Internet > Properties
>2. Dibagian DNS server assignment, klik tombol Edit
>3. Ganti Automatic menjadi Manual
>4. di Preferred DNS, masukan [IPv4 dns](#memilih-layanan-dns-yang-tepat) dan di Alternate masukan [IPv4 dns ke-2](#memilih-layanan-dns-yang-tepat)
>5. di Preferred dan Alternate DNS Encryption, pilih opsi Encrypted only (DNS-over-HTTPS)
>6. Jika Automatic Template tidak bekerja, masukan Manual Template dan masukan domain DoH nya 
>7. Jika ISP anda support IPv6, jangan lupa disetting DNS nya
>8. Klik Save

### Di macOS
>1. System Preferences > Network > Wi-Fi > Advanced > DNS
>2. Pencet tombol “+” dan masukkan [hostname dns](#memilih-layanan-dns-yang-tepat) di kolom DNS,pencet Ok dan Apply

Atau bisa memakai sesuatu seperti [Secure DNS profile creator](https://dns.notjakob.com/tool.html)

### Di Linux
>1. Buka Terminal
>2. Jalankan perintah `nano /etc/resolv.conf` untuk mengedit file `/etc/resolv.conf`
>3. Ubah isi file menjadi seperti berikut (ganti `<hostname dns>` menjadi salah satu hostname dns [disini](#memilih-layanan-dns-yang-tepat))
```
nameserver <hostname dns>
nameserver <hostname dns>
```

### Di browser berbasis Chromium
Ini termasuk **Chrome**, **Edge**, **Brave**, dll
>1. Settings > Privacy and Security
>2. Masukin [hostname dns](#memilih-layanan-dns-yang-tepat) di kolom DNS

### Di Firefox
>1. Settings > Network Settings
>2. Masukin [hostname dns](#memilih-layanan-dns-yang-tepat) di kolom DNS

**_Gimana cara tau jika DNSnya berhasil?_**  
Pergi ke situs seperti [DNSLeakTest](https://dnsleaktest.com) atau [BrowserLeaks](https://browserleaks.com/dns) untuk dicoba  
Jika DNS yang kamu terapkan tidak muncul, silahkan coba [SimpleDNSCrypt](https://simplednscrypt.org)

[Kembali ke "Navigasi"](#navigasi)

## Aplikasi penembus DPI

Ini adalah list aplikasi untuk memudahkan menghilangkan DPI pada perangkat Anda.

> ⚠ **PERHATIAN** ⚠  
> Jangan lupa untuk mengganti [DNS](#memilih-layanan-dns-yang-tepat) terlebih dahulu atau menggunakan [Hosts file](#daftar-hosts-file) apabila [ISP](Advanced-README.md#isp-dan-metode-pemblokiran-yang-digunakan) juga menggunakan DNS untuk pemblokiran

> (ℹ️) **Info**  
> Kami juga menyediakan config untuk aplikasi & ISP di [folder ini](/Config/DPI)


1. [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI) [Windows]  
>GoodbyeDPI dirancang untuk mem-bypass sistem DPI yang ditemukan di banyak ISP yang memblokir akses ke situs web.
2. [GreenTunnel](https://github.com/SadeghHayeri/GreenTunnel) [Windows, macOS, Linux]  
>GreenTunnel melewati sistem DPI yang ditemukan di banyak ISP yang memblokir akses ke situs web.
3. [PowerTunnel](https://github.com/krlvm/PowerTunnel) [Windows, macOS, Linux, [Android](https://github.com/krlvm/PowerTunnel-Android)]  
> PowerTunnel adalah server proxy yang dapat diperluas yang dibangun di atas LittleProxy.
4. [Zapret](https://github.com/bol-van/zapret/blob/master/docs/readme.eng.md) [Linux, FreeBSD]  
>Alat pengelakan DPI standalone. Dapat memungkinkan untuk mem-bypass pemblokiran situs web http(s) atau pembentukan kecepatan, menolak penemuan protokol tcp/udp tanda tangan.
5. [DPITunnel](https://github.com/nomoresat/DPITunnel-cli) [Linux, [Android](https://github.com/nomoresat/DPITunnel-android)]  
>Solusi gratis, sederhana, dan serverless terhadap penyensoran untuk Linux
6. [Geneva](https://github.com/kkevsterrr/geneva) [Linux]  
>Geneva adalah alat berbasis AI yang dirancang oleh peneliti di University of Maryland yang mengalahkan sensor dengan mengeksploitasi bug di sensor.

<sub>List lebih lebih lengkap bisa dilihat di [sini](https://github.com/stars/lepz0r/lists/anti-dpi).</sup>

[Kembali ke "Navigasi"](#navigasi)

## Menembus DPI tanpa aplikasi

### Di Linux
Drop TCP RST dan string lamanlabuh dengan menjalankan perintah dibawah ini:
- **UNTUK PENGGUNA IPTABLES**
  - `sudo iptables -I INPUT -p tcp --tcp-flags ALL RST,ACK -j DROP`
  - `sudo iptables -A INPUT -p tcp -m string --string "Location: http://lamanlabuh.aduankonten.id" --algo bm -j DROP`
- **UNTUK PENGGUNA FIREWALLD**
  - `sudo firewall-cmd --direct --add-rule ipv4 filter INPUT 0 -p tcp --tcp-flags ALL RST,ACK -j DROP`

**(Cara diatas tidak akan bekerja apabila ISP juga mengirim paket TCP RST ke server (daftar ISP bisa dilihat di kolom Mengirim TCP RST ke server)**

### Di Router
**OpenWRT**  
Silahkan ikut tutorial [ini](https://github.com/bebasid/bebasit/blob/master/docs/openwrt-tutorial.md)

**MikroTik (Hanya berfungsi jika ISP tidak mengirim RST ke server)**  
Silahkan ikut tutorial [ini](https://github.com/bebasid/bebasit/blob/master/docs/mikrotik-tutorial.md)

[Kembali ke "Navigasi"](#navigasi)

## Daftar *hosts file*
Hostfile atau Filehost dapat membantu pengguna unblokir akses ke situs web yang diblokir dengan menempatkan alamat IP situs tersebut di dalam file lokal pada perangkat. Berikut ini adalah daftar hostfile yang dapat membantu pengguna unblokir akses ke situs-situs tertentu secara efektif.

| Pemilik | Layanan yang di unblokir | Mirror |
|---|---|---|
| bebasid | [10+](https://raw.githubusercontent.com/bebasid/bebasid/master/releases/hosts) | - |
| mul14 | [10](https://gist.githubusercontent.com/mul14/eb05e88fcec5bb195cbb/raw/611c0693c460fc5bd7037c6d9d43fa6c0ce4fd7c/hosts) | - |
| Kuntaraaaa | [tumblr](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=2556197#gistcomment-2556197) | - |
| rakaaaaaa, Nuginity | [Netflix](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3235083#gistcomment-3235083) | [2](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324456#gistcomment-3324456) |
| Nuginity | [nhentai](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324461#gistcomment-3324461) | - |
| Geofany | [Binance](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3727848#gistcomment-3727848) | - |
| PanjiNamjaElf | [Reddit](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3878656#gistcomment-3878656) | - |
| pratamatama, SI_CLAY | [Steam](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=4250815#gistcomment-4250815) | [2](https://pastebin.com/auhuXvAD) |

[Kembali ke "Navigasi"](#navigasi)

## Menggunakan *hosts file*
Berikut ini adalah langkah-langkah cara unblock akses ke situs dengan menggunakan hostfile.

### Di Android

**ROOTED**
>1. Salin text didalam hostfile yang kamu pilih
>2. Buka File Explorer dan pergi ke /system/etc
>3. Paste text ke file "hosts"

**NON-ROOT**
>1. Salin text didalam hostfile yang kamu pilih
>2. Buat file .txt dan tempel text yang tersalin didalam file
>3. Install [Virtual Hosts](https://github.com/x-falcon/Virtual-Hosts) atau [Host Go](https://play.google.com/store/apps/details?id=dns.hosts.server.change)
>4. Pencet "Select Host File"/"Import HOSTS file" dan pilih file yang kamu buat

### Di iOS
>⚠ **PERHATIAN** ⚠  
>Kami perlu bantuan wkwkwkwwkwkwkk

### Di WIndows
>1. Salin text didalam hostfile yang kamu pilih
>2. Cari `C:\Windows\System32\drivers\etc\hosts`
>3. Tempel text ke file

### Di macOS
>1. Salin text didalam hostfile yang kamu pilih
>2. Cari `/private/etc/hosts`
>3. Tempel text ke file

### Di Linux
>1. Salin text didalam hostfile yang kamu pilih
>2. Cari `/etc/hosts`
>3. Tempel text ke file

[Kembali ke "Navigasi"](#navigasi)

## Menggunakan Tor
Tor adalah jaringan internet anonim yang dapat membantu pengguna untuk menjaga privasi dan melewati pemblokiran saat browsing.

1. [Tor](https://www.torproject.org) [Windows, macOS, Linux, Android]
>Jelajahi Secara Pribadi.
Jelajahi dengan Bebas.
2. [Orbot](https://guardianproject.info/apps/org.torproject.android) [Android]
>Orbot adalah aplikasi proxy gratis yang memberdayakan aplikasi lain untuk menggunakan internet dengan lebih aman.
3. [OnionBrowser](https://onionbrowser.com)
> Bebas menjadi dirimu.

[Kembali ke "Navigasi"](#navigasi)

## Berkontribusi kepada KominFudge

KominFudge adalah sebuah proyek terbuka yang tidak akan mungkin tanpa kontribusi [seperti ini.](CREDITS.md)

Siapapun dapat menambahkan informasi baru dan berkontribusi kepada repositori ini setelah dicek oleh pengelola repositori melalui proses *pull request* atau disingkat sebagai PR.

- Untuk pembaca yang tidak pernah menggunakan GitHub sebelumnya, silahkan baca [dokumen ini](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github).
- Untuk panduan berkontribusi, silahkan baca [dokumen ini](CONTRIBUTING.md).

[Kembali ke "Navigasi"](#navigasi)

<p align="center">Share projek ini</p>
<div id="sosial">
 <p align="center">
  <a href="https://twitter.com/intent/tweet?text=https%3A//github.com/bebasid/KominFudge%20%23BlokirKominfo%20%23BlokirGakPakeMikir"><img src="https://img.shields.io/badge/Twitter-blue?style=flat&logo=twitter&logoColor=white"/></a>
  <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/bebasid/KominFudge"><img src="https://img.shields.io/badge/Facebook-1877F2?style=flat&logo=facebook&logoColor=white"/></a>
 </p>
</div>
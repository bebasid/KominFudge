<p align="center">
    <img src="https://github.com/bebasid/KominFudge/blob/reorganize/assets/icon/logo-black.svg#gh-light-mode-only" alt="BEBASID LOGO" width="500">
    <img src="https://github.com/bebasid/KominFudge/blob/reorganize/assets/icon/logo.svg#gh-dark-mode-only" alt="BEBASID LOGO" width="500">
          <br><p align="center">"Tolak diblokir, Terima <i>ngeblokir.</i></br>
    <p align="center">Karena Kominfo ngeblokir, mari kita <em>unblokir!"</em></p>
    <p align="center"><b>Indonesia</b> | <a href="README.en.md">English</a></p></br>
</p>
   
</div>
</p>
<p align="center">
<a href="https://discord.gg/EKrxZyu"><img src="https://discordapp.com/api/guilds/630415907021389825/widget.png?style=banner2" alt="Join Discord BEBASID"></a>
 </p>
<p align="center">
    <a href="#"><img src="https://img.shields.io/static/v1?label=tahun%20diluncurkan:&message=2022&color=yellowgreen&style=plastic%22"></a>
    <a href="#"><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fbebasid%2FKominFudge_fGHyh&count_bg=%234572CD&title_bg=%23555555&icon_color=%23E7E7E7&title=penonton%3A+%28hari%20ini%2Ftotal%29&edge_flat=false"/></a>
    <a href="https://github.com/bebasid/KominFudge/blob/main/LICENSE"><img src="https://img.shields.io/badge/lisensi-CC--BY--SA--4.0-blue"></a>
</p>
<p align="center">Donasi kami:</br>
<a href="https://trakteer.id/bebasidbykini"><img src="https://img.shields.io/static/v1?label=Trakteer&message=bebasidbykini&color=C02433"></a>
<a href="https://saweria.co/bebasid"><img src="https://img.shields.io/static/v1?label=Saweria&message=bebasid&color=FAAE2B"></a>
 </p>
<p align="center"><sup><b>DISCLAIMER</b>: </br><em>KominFudge tidak bertanggung jawab atas kerusakan perangkat anda, ambil dengan risiko anda sendiri.</em></sup></p>

---

## Daftar Isi

- [Pilihan Tertinggi](#pilihan-tertinggi)
- [Memilih ISP yang tidak ketat](#memilih-isp-yang-tidak-ketat)
  - [Level kepayahan unblok memakai DPI](#level-kepayahan-unblok-memakai-dpi)
- [Cara memilih DNS yang tepat](#cara-memilih-dns-yang-tepat)
  - [Jenis Aplikasi DNS](#jenis-aplikasi-dns)
  - [Cara mengganti lewat DNS](#cara-mengganti-lewat-dns)
- [Jenis Aplikasi untuk menghilangkan DPI](#jenis-aplikasi-untuk-menghilangkan-dpi)
  - [Trik untuk melewati DPI tanpa aplikasi](#trik-untuk-melewati-dpi-tanpa-aplikasi)
  - [Trik untuk melewati DPI memakai router](#trik-untuk-melewati-dpi-memakai-router)
- [Daftar Isi hosts file](#daftar-isi-hosts-file)
  - [Cara unblok memakai hosts file](#cara-unblok-memakai-hosts-file)
- [Memilih VPN yang aman](#memilih-vpn-yang-aman)
  - [VPN untuk para Pengguna Tingkat Lanjut](#vpn-untuk-para-pengguna-tingkat-lanjut)
- [Jenis Aplikasi Tor](#jenis-aplikasi-tor)

---

Proyek ini tiada tanpa kontribusi [yang tidak termasuk disini](/kredit.md).  
*Jika mau bergabung kontribusi, lihat dari [sini](/CONTRIBUTING.md).*

## Pilihan Tertinggi[🔝](#daftar-isi)

DNS: [1.1.1.1](https://1.1.1.1)  
<em>DNS yang intuitif dan senang untuk dipakai.</em>  

DPI: [PowerTunnel](https://github.com/krlvm/PowerTunnel)  
<em>Intuitif dan Open Source.</em>  

Filehost: [bebasid](https://bebasid.com)  
<em>Mempunyai hosts file yang banyak isi pada tersebut.</em>  

VPN: [ProtonVPN](https://protonvpn.com)  
<em>Gratis dan Aman.</em>

## Memilih ISP yang tidak *ketat*[🔝](#daftar-isi)
ISP adalah provider Internet, daftar isi ini akan membuat lebih tau bagaimana jenis ISP Indonesia [memblokir](/sssssssssssssssssssssssssssssssssss.md).

### <ins>IP Transit</ins> 
<sup><b>Untuk mengecek IP Transit apa yang ISP gunakan, silahkan check di https://bgp.tools atau https://bgp.he.net</b>.</sup><br>

ISP yang menggunakan upstream di bawah ini tidak bisa mengganti DNS dengan cara biasa, karena port 53 telah ditutupkan ke provider DNS IP Transit masing-masing sebagaimana <a href="https://youtu.be/q1706yrzzws?t=18927">DNS Nasional yang diusulkan di IDNOG 2022</a>.<br>
| ASN | Nama | Pemblokiran menggunakan DNS | Catatan | Contoh ISP yang kena |
| :---: | :---: | :---: | :---: | :---: |
| [AS4800](https://bgp.tools/as/4800) | PT Aplikanusa Lintasarta | [DNS Transparan (Port 53 dibelokan ke server)](assets/proofs/png/AS4800-1.png?raw=1) | [Lintasarta membelokan port 53 ke server mereka sendiri sehingga DNS lain selain punya mereka dan ISP masing-masing tidak akan berfungsi jika ISP merutekan servernya melalui Lintasarta walaupun DNS server nya ada di Indonesia](assets/proofs/png/AS4800-2.png?raw=1) | Netciti, CYB Media |

<sup style="text-align:center;">Jika di sisi ISP anda tidak mematuhi peraturan DNS Nasional tetapi menggunakan IP Transit di atas, maka akan sama terkena blokir dan harus menggunakan DNS terenkripsi.<br>Atau memakai DNS yang tidak dijalurkan melalui IP Transit diatas <em>jika ada.</em></sup><br>

<b>IP Transit ini membelokan beberapa DNS populer sehingga wajib menggunakan DoH atau DNS yang kurang populer</b>

| ASN | Nama | Pemblokiran menggunakan DNS | DNS yang diblokir | Catatan | Contoh ISP yang kena |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [AS55685](https://bgp.tools/as/55685) | PT Jala Lintas Media | [Ya](https://cdn.bebasid.com/KominFudge/jlm-dnsn.png) | Cloudflare 1.1.1.1, Google, OpenDNS | [Bukti Pembelokan](https://cdn.bebasid.com/KominFudge/jlm-dnsn-bukti.png) | PT Hyperindo Media Perkasa |

<sup style="text-align:center;">Jika di sisi ISP anda tidak mematuhi peraturan DNS Nasional tetapi menggunakan IP Transit di atas, maka akan sama terkena blokir dan harus menggunakan DNS terenkripsi.<br>Atau memakai DNS yang tidak dijalurkan melalui IP Transit diatas <em>jika ada.</em></sup><br>

<b>Sedangkan ISP yang menggunakan upstream dibawah ini, wajib menggunakan WARP/VPN, GoodbyeDPI, atau GreenTunnel/PowerTunnel.</b>
| ASN | Nama | Pemblokiran menggunakan DPI | Catatan | Contoh ISP yang kena |
| :---: | :---: | :---: | :---: | :---: |
| [AS4761](https://bgp.tools/as/4761) | INDOSAT Internet Network Provider | [Ya](assets/proofs/png/AS23951-AS4761.png?raw=1) |  | Citranet, Nusanet |
| [AS4787](https://bgp.tools/as/4787) | PT Cyberindo Aditama (CBN) | [Ya](https://prnt.sc/kklpKa_RmRBC) | | |
| [AS9341](https://bgp.tools/as/9341) / [AS38757](https://bgp.tools/as/38757)  | PT. Indonesia Comnet Plus (ICONNET) | [Ya](https://prnt.sc/oBFA9eKMaBfP) | | |
| [AS55685](https://bgp.tools/as/55685) | PT Jala Lintas Media | [Ya](https://cdn.bebasid.com/KominFudge/jala_lintas_media.png) | | PT Hyperindo Media Perkasa |
| [AS45735](https://bgp.tools/as/45735) | PT. UNINET MEDIA SAKTI | [Ya](https://cdn.bebasid.com/KominFudge/uninet.png) | [Bukti dari Traceroute](https://cdn.bebasid.com/KominFudge/uninet-traceroute.png) | |

<sup style="text-align:center;">Jika ISP anda tidak menggunakan DPI tetapi menggunakan upstream diatas, silahkan gunakan alat anti DPI untuk melewatinya.</sup><br>

<b>Internet Exchange yang memakai middlebox DPI:</b>
| Nama | Menggunakan DPI | CDN yang terkena dampak | Catatan |
| :---: | :---: | :---: | :---: |
| - | - | - | - | - |

### <ins>VPS Provider (Virtual Private Server) / Cloud Provider</ins> 
<sup><b>Berikut merupakan VPS yang menerapkan DPI pada koneksinya sehingga tidak friendly untuk dipakai untuk tunneling jika anda ingin kebebasan dalam internet</b>.</sup><br>

| ASN | Situs Resmi | Provider | Pemblokiran Menggunakan DPI | Mengirim TCP RST ke Server |
| :---: | :---: | :---: | :---: | :---: |
| - | - | - | - | - |

<sup style="text-align:center;"><b>CATATAN: </b>Provider VPS diatas merupakan provider yang telah terbukti melakukan pemblokiran menggunakan DPI di jaringan mereka yang membuat privasi terganggu sehingga tidak cocok untuk anda yang ingin VPN untuk membuka Reddit, Vimeo, dan semacamnya.</sup><br>

### <ins>ISP Fiber</ins>

**ISP Rumah:**
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Indihome | Ya (International, Local) | Ya | Ya | ISP dari Telkom untuk rumah. DPI Indihome juga mengirim TCP RST ke server |
| CBN | Ya (Google, OpenDNS, Cloudflare, Quad9) (Including TCP for those servers)  | Ya | Tidak |
| Biznet Home | Ya (International, Local) | Tidak | Tidak |  |
| MyRepublic | Ya (International, Local, TCP) | Tidak | Tidak |  |
| FirstMedia | Ya (International, Local) | Ya | Tidak |
| Megavision | Ya (International, Local, TCP) | Tidak | ? | Nama lain: StarNET |
| MNC | Ya | Ya/Tidak (Tergantung routing) | ? | Terkena DPI dari Upstream iForte |
| Iconnet PLN | Ya | Ya | Ya | DPI Iconnet juga mengirim TCP RST ke server. Pemblokiran DPI 2 arah |
| PT Netciti Persada | Ya (Tergantung Routing) | Tidak | ? | Kena DNS Nasional  oleh upstream Lintasarta |
| Oxygen | Ya (International) | Ya | Tidak | Nama lain: Moratelindo <br /> DoH dan DoT punya Google diblokir <br>Memblokir alt-port DNS 5353 |
| Citranet | Ya | Ya/Tidak (Tergantung routing) | ? | DPI sesuai dengan upstream Citranet. Jika lewat Indosat dan beberapa upstream mereka, maka dijamin kena |
| Padi Net | Ya (International, Local) | Tidak | ? |
| Fiberstream | Ya (International, Local) | Tidak | ? | ISP Rumahan punya G-MEDIA |
| Balifiber | Ya | Tidak | ? |
| PT Media Cepat Indonesia | Ya (International, Local) | Tidak | ? |
| Melsa | Ya (International, Local) | Tidak | ? | DNS Google aman |
| Circle One | Ya | Tidak | ? |  |
| WINET (PT Wahyu Adidaya Network) | Ya (International, Local) | Tergantung Routing | ? | Terkena DPI oleh BIX |
| MyNet | Ya | Tergantung Routing | ? | Terkena DPI oleh BIX |
| Bnetfit | Ya | Ya | Tidak | Punya PT Jala Lintas Media |
| Marvatel | Ya | Tidak | Tidak | |
| NusaNet | Ya (Google. Quad9, OpenDNS, Cloudflare) | Ya/Tidak (Tergantung Routing) | | Terkena DPI dari upstream Indosat | 

**ISP Kantor:**
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Telkom Astinet | Ya (DNS Injection for International DNS via Transparent Proxy) | Ya | ? | ISP dari Telkom untuk kantor. DNS luar negeri dibelokan dulu request nya ke proxy Telkom yang berada di TELIN sehingga whitelist ACL untuk DNS luar negeri tidak akan berfungsi karena pas kita kueri server ke luar, yang terbaca di server DNS luar adalah IP dari proxy Telkom karena kita kueri sebagai proxy Telkom bukan kita sendiri. Ini sangat menggangu bagi pengguna korporat yang mempunyai server di luar atau menggunakan server custom filtering seperti NextDNS, ControlD, OpenDNS, dan sebagainya dikarenakan yang terbaca adalah IP dari server proxy Telkom daripada IP usernya |
| Linknet | Ya | Tidak | Tidak | ISP dari Firstmedia untuk kantor |
| Lintasarta | Ya (International, Local) | Tidak | Tidak | Ikut DNS Nasional |
| Biznet Metronet | Ya (International) | Tidak | Tidak | aka Biznet Dedicated |
| PT Metrasat | Ya | Ya | ? |
| PT Pasifik Satelit Nusantara | Ya | Tidak | ? |
| PT Artha Telekomindo | Ya | Tidak | ? |
| PT Hawk Teknologi Solusi | Ya | Tidak | ? |
| PT Jaringanku Sarana Nusantara | Ya (International, Local) | Tidak | ? | Nama lain: JSN |
| PT. Infotama Lintas Global | Ya (International, Local) | Tidak | ? |
| PT Remala Abadi | Ya | Tidak | Tidak | Nama lain: Tachyon |
| PT iForte Global internet | Ya | Tidak | Tidak |  |
| PT Cipta Informatika Cemeriang | Ya | Tidak | ? |
| PT Lexa Net | Ya | Tidak | ? | Nama lain: PT Lexa Global Akses |
| PT Media Sarana Data  | Ya (International, Local) | Tidak | ? | Nama lain: G-MEDIA |
| PT Artorius Telemetri Sentosa | Ya | Tidak | ? |
| D-NET | Ya (Google, OpenDNS, Cloudflare, Quad9) (Including TCP for those servers) | Tidak | ? | Nama lain: PT Core Mediatech <br />Hanya membelokan DNS Google, Cloudflare, dan Quad9 |
| PT Sumber Koneksi Indotelematika | Ya | Tidak | ? |
| ProNET | Ya | Ya/Tidak (Tergantung Routing) | Ya | Nama lain: PT Trisari Data Indonesia<br />Beberapa DNS Publik seperti Cloudflare, Alibaba DNS, dan beberapa DNS Indonesia lokal diblokir.  |
| PT Media Jaringan Telekomunikasi | Ya | Tidak | ? |
| PT Sekawan Global Komunika | Ya | Tidak | ? |
| PT INFORMASI NUSANTARA TEKNOLOGI | Ya | Tidak | ? |
| Orion Cyber Internet | Ya | Tidak | ? | DNS populer seperti Cloudflare, Google, Quad9, Level3, dll dibelokan ke server ISP |
| PT AGTI | Ya (International, Local) | Tidak | ? | Nama lain: PT. Arjuna Global Teknologi Indonesia |
| PT Parsaoran Global Datatrans | Ya | Tidak | - | Nama lain: HSP NET |
| PT Fiber Networks Indonesia | Ya (International, Local) | Tidak | ? | Nama lain: FIBERNET |
| PT Power Telecom Indonesia | Ya | Ya | ? | DPI tidak memblokir Vimeo |
| PT Solnet Indonesia | Ya | Tidak | ? |  |
| PT Data Utama Dinamika | Ya | Ya | Ya | Terkena dari Lintasarta |
| PT BIT TEKNOLOGI NUSANTARA | Ya | Ya | ? | [Terkena dari iForte](https://media.discordapp.net/attachments/709386084894900236/1112694319992807454/image.png) |
| PT Hyperindo Media Perkasa | Ya | Ya | ? | [Terkena dari PT Jala Lintas Media](https://prnt.sc/CIOWaL3q56Eh) |

### <ins>ISP Mobile Seluler</ins>
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server |  Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Telkomsel / By.U / KartuHalo | Ya (International, Local, TCP) | Ya | Ya | DPI Telkomsel juga mengirim TCP RST ke server |
| XL / Axis / Live On | Ya (International, Local) | Ya | Ya | DPI XL juga mengirim TCP RST ke server | 
| 3 | Ya (Google, OpenDNS) | Ya | Tidak | Three menghijack DNS Server Google dan OpenDNS ke punya dia |
| Indosat | Ya (Google, OpenDNS) | Ya | Tidak, tetapi menthottle koneksi ke domain yg diblok jika Host/SNI header masih kedetek | Sama seperti anaknya, Pada 4/5 Oktober 2023, Indosat mulai menghijack DNS Server Google dan OpenDNS ke punya dia |
| Smartfren | Ya (International, Local, TCP) | Ya | Tidak | Memblokir DoH/DoT punya Google |

### <ins>Level kepayahan unblok memakai DPI</ins>
Seberapa payah dengan cara unblok memakai DPI per ISP:

| Nama | Kepayahan | Bypass MikroTik & IPTables |
| :---: | :---: | :---: |
| Telkomsel / By.U / Kartu Halo | Tinggi | Tidak Bisa |
| XL / Axis / Live On | Tinggi | Tidak Bisa |
| Iconnet | Tinggi | Tidak Bisa |
| Indihome | Sedang | ? |
| Indosat | Sedang | Tidak Bisa (IM3) & Bisa (Hi-Fi, IP Transit) |
| CBN | Sedang | Bisa |
| PT Jala Lintas Media, Bnetfit, dkk | Sedang | Bisa |
| Smartfren | Sedang | Bisa |
| 3 | Rendah | Bisa |
| Firstmedia | Rendah | Bisa |
| PT UNINET MEDIA SAKTI | Rendah | Bisa |

**DATA INI BELUM DILENGKAPI. JIKA BERHARAP UNTUK DILENGKAPKAN, SILAKAN BERI INFORMASI TERLEBIH LANJUT.**

<sup><em>Ambilkan semua dengan sedikit garam, semua ISP akan mengganti dengan cara pemblokirannya.</em></sup>


## Cara memilih DNS yang tepat[🔝](#daftar-isi)
Paling simpel untuk *Kominfo* ngeblokir. Tapi, DNS bisa [digantikan](#cara-mengganti-lewat-dns).  
Daftar isi server DNS untuk menggantikan server blokir punya *Kominfo*.

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
| [BebasDNS](https://github.com/bebasid/bebasdns) | DNS punya bebasid, menghadirkan blokir iklan, malware, dan juga family | `103.87.68.194` | `103.87.68.195` | `1753` | `2a05:dfc7:bca0:beba:51d::53` | `2a05:dfc7:bca0:beba:51d::5353` | `dns.bebasid.com/dns-query` | `dns.bebasid.com` |
| [AhaDNS](https://blitz-setup.ahadns.com) | - | ? | ? | ? | ? | ? | `blitz.ahadns.com` | ? |
| BlahDNS | - | `45.91.92.121`  | X | - | `2a0e:dc0:6:23::2` | X | `doh-ch.blahdns.com/dns-query` | `dot-ch.blahdns.com` |
| [RethinkDNS](https://rethinkdns.com/configure) | - | ? | ? | - | ? | ? | `basic.rethinkdns.com` | `max.rethinkdns.com` |
| NextDNS | - | `45.90.28.233` | `45.90.30.233` | `5353` | `2a07:a8c0::` | `2a07:a8c0::` | `dns.nextdns.io` | `dns.nextdns.io` |
| LibreDNS | - | `116.202.176.26` | X | - | X | X | `doh.libredns.gr/dns-query` | `dot.libredns.gr` |
| [ControlD](https://controld.com/free-dns) | - | `76.76.2.2` | `76.76.10.2` | - | `2606:1a40::2` | `2606:1a40:1::2` | `freedns.controld.com/p1` | `p1.freedns.controld.com`|
| AdGuard DNS | Memblokir iklan & malware | `94.140.14.14` | `94.140.15.15` | `5353` | `2a10:50c0::ad1:ff` | `2a10:50c0::ad2:ff` | `https://dns.adguard-dns.com/dns-query` | `dns.adguard-dns.com` |
| [DNSWarden](https://dnswarden.com/customfilter.html) | - | ? | ? | ? | ? | ? | ? | ? |

<sup>Daftar isi ini lebih lengkap dan bisa dilihat dari [KB AdGuard](https://adguard-dns.io/kb/general/dns-providers/) dan [Curl Wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS). Dan bisa juga membuat sendiri dengan menggunakan [Cloudflare Workers](https://github.com/tina-hello/doh-cf-workers) atau [server sendiri dengan memakai PHP](https://github.com/NotMikeDEV/DoH).</sup>

## Jenis Aplikasi DNS[🔝](#daftar-isi)
*Aplikasi DNS ini bisa buat memakai DNS lebih senang.*

> ⚠ **PERHATIAN** ⚠  
> Apabila ISP juga melakukan pemblokiran menggunakan DPI, hanya bisa gunakan [Jenis Aplikasi untuk menghilangkan DPI](#jenis-aplikasi-untuk-menghilangkan-dpi).

1. [Nebulo](https://nebulo.app) [Android]  
<em>Aplikasi untuk mengganti DNS di Android dengan mudah.</em>  

2. [DNSCloak](https://apps.apple.com/app/id1452162351) [iOS]  
<em>Aplikasi untuk mengganti DNS dan mengatur <b>DNSCrypt</b> di iOS.</em>   

3. [DNSCrypt](https://dnscrypt.info) [Windows, macOS, Linux]  
<em>DNS untuk selfhost yang dapat melakukan forwarding ke server <b>DNSCrypt</b> dan <b>DNS-over-HTTPS</b>.</em>   

4. [SimpleDNSCrypt](https://simplednscrypt.org) [Windows]  
<em>Aplikasi penginstalan <b>DNSCrypt</b>.</em>   

5. [DNS Profile Creator](https://dns.notjakob.com/tool.html) [Browser]  
<em>Cara membuat <code>dns.mobileconfig</code> Apple dengan senang.</em>   

6. [YogaDNS](https://yogadns.com) [Windows]  
<em>Aplikasi pengganti DNS untuk Windows.</em>   

7. [RethinkDNS](https://rethinkdns.com) [Android]  
<em>Aplikasi untuk mengganti DNS dan pemblokiran iklan.</em>   

8. [Intra](https://getintra.org) [Android]  
<em>Aplikasi pengganti DNS untuk Android.</em> 

9. [AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) [Windows, macOS, Linux]  
<em>DNS untuk selfhost dengan AdBlock, encrypted upstream dan downstream.</em>   

10. [Stubby](https://github.com/getdnsapi/stubby) [Windows, macOS, Linux]  
<em>DNS untuk self-hosts yang dapat melakukan forwarding ke server **DNS-over-TLS**.</em> 

11. [InviZible](https://github.com/Gedsh/InviZible) [Android]  
<em>Aplikasi android untuk DNS dan Tor.</em> 

## Cara mengganti lewat DNS[🔝](#daftar-isi)
<em>Setelah sudah ada daftar isi DNS, gimana cara memakainya?</em>

### <ins>Android</ins>
1. **Settings** > **Other Wireless Connections** > **Private DNS**  
2. Masukkan [hostname dns](#cara-memilih-dns-yang-tepat) lalu klik tombol **Save**.

### <ins>iOS</ins>

1. **Settings** > **Wi-Fi** > ***wifi***  
2. Ketuk ikon `(i)`  
3. Ganti IP Address menjadikan **Static** dan masukkan [hostname dns](#cara-memilih-dns-yang-tepat) di kolom DNS tersebut.

### <ins>Windows</ins>

#### Windows 7 sampai ke Windows 10:
1. **Control Panel** > **Network and Internet** > **Network and Sharing Center** > **Connections** > **Properties**  
2. Pencet di Tulisan **Internet Protocol Version 4 (TCP/IPv4)** dengan 2 kali.  
3. Ubahkan **Obtain DNS server address automatically** ke **Use the following DNS server addresses**. 
4. Masukkan [hostname dns](#cara-memilih-dns-yang-tepat) di kolom DNS tersebut lalu klik tombol **Ok**.

#### Windows 11:
1. Buka **Settings**, Pergi ke **Network & Internet** dan pilih **Properties**.    
2. Di bagian **DNS server assignment**, klik tombol **Edit**.  
3. Gantikan **Automatic** menjadi **Manual**.  
4. Untk *Preferred DNS*, masukkan `1.1.1.1`/`8.8.8.8`/`9.9.9.9` sedangkan untuk *Alternate DNS*, masukkan `1.0.0.1`/`8.8.4.4`/`149.112.112.112`.
5. Di bagian *Preferred DNS* dan *Alternate DNS* Encryption, pilih opsi **Encrypted only (DNS-over-HTTPS)**.  
6. Lalu klik tombol **Save**.

### <ins>macOS</ins>
1. **System Preferences** > **Network** > **Wi-Fi** > **Advanced** > **DNS**  
2. Pencet tombol `+` dan masukkan [hostname dns](#cara-memilih-dns-yang-tepat) di kolom DNS tersebut.
3. Lalu klik **Ok** dan **Apply**.

### <ins>Linux</ins>
1. Buka **Terminal**.  
2. Jalankan pake perintah `nano /etc/resolv.conf` untuk mengedit file `/etc/resolv.conf`.  
3. Ubah isi file menjadi seperti berikut (gantikan `<hostname dns>` menjadi salah satu [hostname dns disini](#cara-memilih-dns-yang-tepat)).
```
nameserver <hostname dns>
nameserver <hostname dns>
```
Catatan: Ada beberapa komponen yang mungkin terpasang pada distro Linux (seperti *NetworkManager*) dapat mengubah isi file `/etc/resolv.conf` tanpa disadari, untuk mencegah hal tersebut dapat mengetik perintah `chattr +i /etc/resolv.conf` setelah selesai mengubah file tersebut. Apabila ingin mengubah isi file `/etc/resolv.conf` kembali, dapat mengetik perintah `chattr -i /etc/resolv.conf` tersebut.

### <ins>Browser</ins>

#### Browser berbasis Chromium:
1. **Settings** > **Privacy and Security**  
2. Masukin [hostname dns](#cara-memilih-dns-yang-tepat) di kolom DNS tersebut.

#### Browser berbabis Firefox:
1. **Settings** > **Network Settings**  
2. Masukin [hostname dns](#cara-memilih-dns-yang-tepat) di kolom DNS tersebut.

#### <ins><b>Bagaimana cara tau DNS-nya berhasil?</b></ins>  
Pergi ke situs [DNSLeakTest](https://dnsleaktest.com) atau [BrowserLeaks](https://browserleaks.com/dns) untuk mengeteskan.  
Jika DNS ISP masih muncul daripada DNS yang sudah diubah, silahkan download [DNSCrypt](https://dnscrypt.info) atau [SimpleDNSCrypt](https://simplednscrypt.org).

## Jenis Aplikasi untuk menghilangkan DPI[🔝](#daftar-isi)
Untuk sekarang, hanya banyak [ISP](#cara-memilih-isp-yang-tidak-ketat) blokirnya itu dengan menggunakan Deep Packet Inspection (DPI). 

Maka itu, DPI bisa dihilangkan dengan mudah dengan aplikasi dibawah ini:

> ⚠ **PERHATIAN** ⚠  
> Jangan lupa untuk menggantikan [DNS](#jenis-aplikasi-dns) terlebih dahulu atau menggunakan [Hosts file](#datar-isi-hosts-file) apabila [ISP](#cara-memilih-isp-yang-tidak-ketat) yang tidak ketat juga menggunakan DNS untuk pemblokiran tersebut.

> ℹ️ **Info**  
> KominFudge juga menyediakan config untuk Aplikasi & ISP di folder, ada [disini](/dpi-circumvention-config).


1. [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI) [Windows]  
<em>Aplikasi CLI untuk hilangkan DPI.</em>

2. [GreenTunnel](https://github.com/SadeghHayeri/GreenTunnel) [Windows, macOS, Linux]  
<em>Aplikasi GUI untuk hilangkan DPI dengan yang mudah.</em>

3. [PowerTunnel](https://github.com/krlvm/PowerTunnel) [Windows, macOS, Linux, [Android](https://github.com/krlvm/PowerTunnel-Android)]  
<em>Aplikasi GUI untuk hilangkan DPI dengan banyak fitur.</em>

4. [SNI-Mask](https://github.com/macronut/SNI-Mask) [Windows]  
<em>Proxy untuk menghilangkan DPI.</em>

5. [Accesser](https://github.com/URenko/Accesser) [Windows, macOS, Linux]  
<em>Aplikasi untuk menghilangkan TCP RST. Umumnya digunakan di Tiongkok.</em>

6. [GhosTCP](https://github.com/macronut/ghostcp) [Windows]  
<em>Mengamankan koneksi TCP.</em>

7. [sniffjoke](https://github.com/vecna/sniffjoke) [Linux]  
<em>Mengamankan WireTap/Sniff/IDS.</em>

8. [SpoofDPI](https://github.com/xvzc/SpoofDPI) [macOS, Linux]  
<em>Menipu DPI-mu.</em>

9. [Zapret](https://github.com/bol-van/zapret/blob/master/docs/readme.eng.md) [Linux, FreeBSD]  
<em>Alat penghindaran DPI.</em>

10. [DPITunnel](https://github.com/zhenyolka/DPITunnel-cli) [Linux, [Android](https://github.com/zhenyolka/DPITunnel-android)]  
<em>CLI untuk Linux.</em>

11. [Geneva](https://github.com/kkevsterrr/geneva) [Linux]  
<em>Alat penghindaran DPI berbasis AI.</em>  

## Trik untuk melewati DPI tanpa aplikasi[🔝](#daftar-isi)

#### <ins>Linux</ins>

*Untuk Drop **TCP RST** dan **lamanlabuh** di IPTables, jalankan perintah*:
```
sudo iptables -I INPUT -p tcp --tcp-flags ALL RST,ACK -j DROP 
sudo iptables -A INPUT -p tcp -m string --string "Location: http://lamanlabuh.aduankonten.id/" --algo bm -j DROP 
```
*Untuk **firewall-cmd**, jalankan perintah*:
```
sudo firewall-cmd --direct --add-rule ipv4 filter INPUT 0 -p tcp --tcp-flags ALL RST,ACK -j DROP
```

*Gunakan firewall-cmd untuk distro yang menggunakan firewalld, seperti Fedora dan OpenSUSE di terminal. Tetapi perintah diatas tidak akan bekerja apabila ISP juga mengirim paket TCP RST ke server (daftar ISP bisa dilihat di kolom mengirim **TCP RST** ke server pada tabel diatas).*

## Trik untuk melewati DPI memakai router[🔝](#daftar-isi)

#### <ins>OpenWRT</ins>
Silahkan ikut tutorial pada [tersebut](https://github.com/bebasid/bebasit/blob/master/docs/openwrt-tutorial.md).

### <ins>MikroTik</ins>
Silahkan ikut tutorial pada [tersebut](https://github.com/bebasid/bebasit/blob/master/docs/mikrotik-tutorial.md).

## Daftar isi hosts file[🔝](#navigasi)
Hosts file *(atau File hosts)* tidak terlalu payah menjelaskan ini.
Daftar Isi host file untuk orang yang memahami tersebut.

| List | Alternatif |
| :---: | :---: |
| [bebasid](https://raw.githubusercontent.com/bebasid/bebasid/master/releases/hosts) | - |
| [mul14](https://gist.githubusercontent.com/mul14/eb05e88fcec5bb195cbb/raw/611c0693c460fc5bd7037c6d9d43fa6c0ce4fd7c/hosts) | - |
| [tumblr](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=2556197#gistcomment-2556197) | - |
| [Netflix](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3235083#gistcomment-3235083) | [2](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324456#gistcomment-3324456) |
| [nhentai](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3324461#gistcomment-3324461) | - |
| [Binance](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3727848#gistcomment-3727848) | - |
| [Reddit](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=3878656#gistcomment-3878656) | - |
| [Steam](https://gist.github.com/mul14/eb05e88fcec5bb195cbb?permalink_comment_id=4250815#gistcomment-4250815) | [2](https://pastebin.com/auhuXvAD) |

## Cara unblok memakai hosts file[🔝](#navigasi)
Filenya sudah ada. Sekarang, apalagi yang harus dilakukan?

### Windows
1. Salinkan teks di dalam hosts file yang kamu pilih.  
2. Buka File Explorer dan pergi ke `C:\Windows\System32\drivers\etc`.  
3. Tempelkan teks ke file **hosts** tersebut.

### Android

#### Perangkat yang sudah di ROOT:
1. Salinkan teks didalam hosts file yang kamu pilih.  
2. Buka File Explorer dan pergi ke `/system/etc`.  
3. Tempelkan teks ke file **hosts**.

#### Perangkat yang belum di ROOT:
1. Salin teks didalam hosts file yang kamu pilih.  
2. Buatkan file dan tempelkan teksnya di dalam file tersebut.  
3. Pasangkan [Virtual Hosts](https://github.com/x-falcon/Virtual-Hosts) atau [Host Go](https://play.google.com/store/apps/details?id=dns.hosts.server.change).  
4. Lalu, pencet **Select Host File** atau **Import HOSTS file** dan klik file yang kamu sudah buat.

## Memilih VPN yang aman[🔝](#daftar-isi)
Cara yang untuk melewati oleh blokir apabila cara diatas tidak bisa. *Tapi, jangan download VPN yang tidak aman & terpercaya!*  
Coba lihat VPN yang aman dan lebih baik dipake, daripada vpn yang tidak terpercaya ada di bawah ini:

| Nama | Positif | Negatif | Server |
| :---: | :---: | :---: | :---: |
| [Mullvad](https://mullvad.net/) | VPN Berbayar yang aman | Berbayar | 867 |
| [ProtonVPN](https://protonvpn.com) | VPN "gratis" yang "aman" | Tidak ada Split-tunneling di sub gratis dan [ini](https://arstechnica.com/information-technology/2021/09/privacy-focused-protonmail-provided-a-users-ip-address-to-authorities) | 100 |
| [Windscribe](https://windscribe.com) | Ada Split-tunneling & banyak fitur lainnya | 15GB per bulan dan [ini](https://arstechnica.com/gadgets/2021/07/vpn-servers-seized-by-ukrainian-authorities-werent-encrypted) | 15 |
| [ExpressVPN](https://expressvpn.com) | Cepat | Tidak begitu aman dan berbayar | 148 |
| [Psiphon](https://psiphon.ca) | Open Source | ? | ? |
| [OVPN](https://ovpn.com) | **Aman** | Berbayar | 102 |

### VPN untuk para Pengguna Tingkat Lanjut[🔝](#daftar-isi)
VPN di bagian ini memerlukan konfigurasi, jika hanya ingin VPN yang di luar kotak, silahkan abaikan di bawah ini.

| Nama | Deskripsi |
| :---: | :---: |
| [OpenVPN](https://openvpn.net) | Sistem VPN yang mengimplementasikan teknik-teknik untuk membuat koneksi arah-ke-arah atau situs-ke-situs yang aman |
| [Wireguard](https://wireguard.com) | Seperti OpenVPN |
| [Softether](https://softether.org) | Seperti OpenVPN. Tapi, hanya ada server yang terbatas(?) |

## Jenis Aplikasi Tor[🔝](#daftar-isi)
Ini adalah bagian yang ekstrim dengan memakai Tor ada di bawah ini.

1. [Tor Browser](https://www.torproject.org) [Windows, macOS, Linux, Android]  
<em>Resmi Browser Tor.</em>  

2. [Orbot](https://guardianproject.info/apps/org.torproject.android) [Android]  
<em>Proxy dengan Tor.</em>  

3. [Onion Browser](https://onionbrowser.com) [iOS]  
<em>Browser Tor untuk iOS.</em>  

4. [InviZible](https://github.com/Gedsh/InviZible) [Android]  
<em>Aplikasi Android untuk DNS dan Tor.</em>
---
<p align="center">Share proyek ini!</p>
<div id="sosial">
 <p align="center">
  <a href="https://twitter.com/intent/tweet?text=https%3A//github.com/bebasid/KominFudge%20%23BlokirKominfo%20%23BlokirGakPakeMikir"><img src="https://img.shields.io/badge/Twitter-blue?style=flat&logo=twitter&logoColor=white"/></a>
  <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/bebasid/KominFudge"><img src="https://img.shields.io/badge/Facebook-1877F2?style=flat&logo=facebook&logoColor=white"/></a>
  <p align="center">
:coffee: Traktir kami kopi!
    </br>
<a href="https://trakteer.id/bebasidbykini"><img src="https://img.shields.io/static/v1?label=Trakteer&message=bebasidbykini&color=C02433"></a>
<a href="https://saweria.co/bebasid"><img src="https://img.shields.io/static/v1?label=Saweria&message=bebasid&color=FAAE2B"></a>
    </br>
    </p>
  <p align="center">
    <a href="https://github.com/bebasid/KominFudge#readme">KominFudge</a> dari <a href="https://github.com/bebasid">bebasid</a> dilisensikan sebagai <a href="https://github.com/bebasid/KominFudge/blob/main/LICENSE">CC-BY-SA-4.0</a>.
</p>
</div>

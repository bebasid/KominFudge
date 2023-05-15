<div align="center">
 <img src="/assets/icon/kominfudge-500x250.png">
 <p>"Tolak diblokir, Ayo <i>unblokir!</i>"</p>
 <p><b>KominFudge Panduan Mahir</b></p>
</div>

## Tentang KominFudge

KominFudge adalah sebuah panduan tentang penyensoran Internet di Indonesia dan cara untuk menembusnya agar dapat mengakses Internet secara bebas.

Panduan ini terdiri atas dua dokumen yaitu:

- **Panduan mahir**, yang menjelaskan bagaimana cara penyensoran Internet di Indonesia bekerja secara rinci dan metode menembus penyensoran yang lebih rumit.

- [**Panduan pemula**](../README.md), yang menjelaskan cara dan aplikasi untuk menembus penyensoran Internet pada umumnya diurut mulai dari cara termudah hingga tersulit serta rekomendasi dari KominFudge.

Silahkan baca dari awal sampai akhir, atau lihat bagian "Navigasi" untuk memilih bagian tertentu yang ingin dibaca.

>DISCLAIMER: KominFudge tidak bertanggung jawab atas kerusakan perangkat Anda, gunakan informasi yang diberikan dengan risiko Anda sendiri.

>CATATAN: Versi panduan ini masih dalam pengembangan awal karena sedang melalui tahap reorganisasi.

## Navigasi

- [Tentang KominFudge](#tentang-kominfudge)
- [Penjelasan metode pemblokiran](#Penjelasan-metode-pemblokiran)
- [Jaringan *upstream* (IP *transit*) dan *internet exchange*](#jaringan-upstream-ip-transit-dan-internet-exchange)
- [ISP dan metode pemblokiran yang digunakan](ISP-dan-metode-pemblokiran-yang-digunakan)
- [Berkontribusi kepada KominFudge](#berkontribusi-kepada-kominfudge)

## Penjelasan metode pemblokiran

Sedang dikerjakan.

## Jaringan *upstream* (IP *transit*) dan *internet exchange*

> CATATAN: Masih dalam pengerjaan, isi baru saja disalin dari README.md di branch main.

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
| [AS23947](https://bgp.tools/as/23947) / [AS131111](https://bgp.tools/as/131111) | PT Mora Telematika Indonesia (Moratelindo) |[Ya](assets/proofs/png/DPI-Moratel.png?raw=1) | Tidak Memblokir Vimeo |
| [AS149684](https://bgp.tools/as/149684) | PT. Kreatif Pasific | Ya | 

<sup style="text-align:center;">Jika ISP anda tidak menggunakan DPI tetapi menggunakan upstream diatas, silahkan gunakan tool anti DPI untuk membypass nya</sup><br>

<b>Internet Exchange yang memakai middlebox DPI</b>
| Nama | Menggunakan DPI | CDN yang terkena dampak | Catatan |
| :---: | :---: | :---: | :---: |
| BIX - Biznet Internet Exchange | Ya | [Cloudflare, dan semua CDN yang terhubung dengan BIX](assets/proofs/png/BIX.png?raw=1) | Walaupun pake GoodbyeDPI, Powertunnel, dll tidak akan bisa karena dari sisi Server sudah diblokir oleh Biznet sendiri

## ISP dan metode pemblokiran yang digunakan

> CATATAN: Masih dalam pengerjaan, isi baru saja disalin dari README.md di branch main.

Berikut ini adalah daftar ISP dan metode pemblokiran yang digunakan:

### ISP Serat Optik (*Fiber Optic*) 
**ISP Rumah**
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Indihome | Ya (Out, Local) | Ya | Ya | ISP dari Telkom untuk rumah. DPI Indihome juga mengirim TCP RST ke server |
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
| PT Remala Abadi | Ya | Tidak | Tidak | Nama lain: Tachyon |
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
| PT Solnet Indonesia | Ya | Ya | Ya | DPI Solnet juga mengirim TCP RST ke server |

### ISP Selular/*Mobile*
| Nama | Pemblokiran menggunakan DNS | Pemblokiran menggunakan DPI | Mengirim TCP RST ke server |  Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Telkomsel / By.U / KartuHalo | Ya (Out, Local) | Ya | Ya | DPI Telkomsel juga mengirim TCP RST ke server |
| XL / Axis / Live On | Ya (Out, Local) | Ya | Ya | DPI XL juga mengirim TCP RST ke server | 
| 3 | Ya | Ya | Ya | DPI Tri juga mengirim TCP RST ke server |
| Indosat | Ya | Ya | Tidak |
| Smartfren | Ya (Out, Local) | Ya | Tidak | Memblokir DoH/DoT punya Google |

## Berkontribusi kepada KominFudge

KominFudge adalah sebuah proyek terbuka yang tidak akan mungkin tanpa kontribusi [sosok-sosok berikut ini.](../kredit.md)

Siapapun dapat menambahkan informasi baru dan berkontribusi kepada repositori ini setelah dicek oleh pengelola repositori melalui proses *pull request* atau disingkat sebagai PR.

- Untuk pembaca yang tidak pernah menggunakan GitHub sebelumnya, silahkan baca [dokumen ini.](masih-placeholder-contrib-tutorial)
- Untuk panduan berkontribusi, silahkan baca [dokumen ini.](../CONTRIBUTING.md)

[Kembali ke "Navigasi"](#navigasi)

<p align="center">Share projek ini</p>
<div id="sosial">
 <p align="center">
  <a href="https://twitter.com/intent/tweet?text=https%3A//github.com/MeFinity/KominFudge%20%23BlokirKominfo%20%23BlokirGakPakeMikir"><img src="https://img.shields.io/badge/Twitter-blue?style=flat&logo=twitter&logoColor=white"/></a>
  <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/MeFinity/KominFudge"><img src="https://img.shields.io/badge/Facebook-1877F2?style=flat&logo=facebook&logoColor=white"/></a>
 </p>
</div>

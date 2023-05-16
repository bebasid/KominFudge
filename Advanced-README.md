<div align="center">
 <img src="/assets/icon/KominFudge-compressed.png">
 <p>"Tolak diblokir, Ayo <i>unblokir!</i>"</p>
 <p><b>KominFudge Panduan Mahir</b></p>
</div>

## Tentang KominFudge

KominFudge adalah sebuah panduan tentang penyensoran Internet di Indonesia dan cara untuk menembusnya agar dapat mengakses Internet secara bebas.

Panduan ini terdiri atas dua dokumen yaitu:

- **Panduan mahir**, yang menjelaskan bagaimana cara penyensoran Internet di Indonesia bekerja secara rinci dan metode menembus penyensoran yang lebih rumit.

- [**Panduan pemula**](README.md), yang menjelaskan cara dan aplikasi untuk menembus penyensoran Internet pada umumnya diurut mulai dari cara termudah hingga tersulit serta rekomendasi dari KominFudge.

Silahkan baca dari awal sampai akhir, atau lihat bagian "Navigasi" untuk memilih bagian tertentu yang ingin dibaca.

>DISCLAIMER: KominFudge tidak bertanggung jawab atas kerusakan perangkat Anda, gunakan informasi yang diberikan dengan risiko Anda sendiri.

>CATATAN: Versi panduan ini masih dalam pengembangan awal karena sedang melalui tahap reorganisasi.

## Navigasi

- [Tentang KominFudge](#tentang-kominfudge)
- [Penjelasan metode pemblokiran](#penjelasan-metode-pemblokiran)
  - [Pemblokiran berbasis DNS](#pemblokiran-berbasis-dns)
  - [Pemblokiran berbasis DPI](#pemblokiran-berbasis-dpi)
- [Menentukan metode pemblokiran yang digunakan](#menentukan-metode-pemblokiran-yang-digunakan)
- [Jaringan *upstream* (IP *transit*) dan *internet exchange*](#jaringan-upstream-ip-transit-dan-internet-exchange)
  - [Jaringan *upstream* (IP *transit*)](#jaringan-upstream-ip-transit)
  - [*Internet exchange*](#internet-exchange)
- [ISP dan metode pemblokiran yang digunakan](#isp-dan-metode-pemblokiran-yang-digunakan)
  - [ISP serat optik (*fiber optic*)](#isp-serat-optik-fiber-optic)
  - [ISP selular / *mobile*](#isp-selular--mobile)
- [Berkontribusi kepada KominFudge](#berkontribusi-kepada-kominfudge)

## Penjelasan metode pemblokiran

Metode pemblokiran yang umumnya diterapkan oleh masing-masing ISP (*Internet Service Provider*, Penyedia Layanan Internet), jaringan *upstream* (IP *transit*), dan *internet exchange* dapat dibagi menjadi dua metode yaitu:

| Nama metode | Cara kerja |
| :---: | :--- |
| Pemblokiran berbasis DNS | Dengan membatasi layanan DNS yang dapat digunakan, penyensoran dapat dilakukan dengan membalas permintaan alamat IP yang menuju ke situs yang diblokir dengan alamat IP situs notifikasi pemblokiran akses. |
| Pemblokiran berbasis DPI | Dengan memantau akses Internet dan memeriksa setiap paket data secara mendalam, sistem DPI dapat mengidentifikasi sambungan menuju situs yang diblokir dan menutup atau mengarahkan sambungan tersebut ke halaman notifikasi pemblokiran akses sebelum *server* tujuan dapat merespon. |

[Kembali ke "Navigasi](#navigasi)

### Pemblokiran berbasis DNS

Karena protokol DNS bersifat tidak terenkripsi dan tidak dapat memverifikasi *server* yang ingin dituju serta integritas data, pemblokiran berbasis DNS pada umumnya diterapkan melalui tiga metode ini yaitu:

| Nama metode | Cara kerja | Contoh ISP yang menerapkan (Max 5) |
| :---: | :--- | :---: |
| Memblokir akses layanan DNS lain | Akses menuju layanan DNS publik popular / luar negeri dapat diblokir dari alamat IP, nomor port, atau jenis protokol yang digunakan maupun kombinasi dari ciri-ciri tersebut atau seluruhnya. | 3 (Three), Orion Cyber Internet, Nusanet, PT Centrin Utama, Oxygen (Moratelindo)  |
| Memblokir port DNS selain menuju ke DNS ISP | Akses menuju layanan DNS selain yang disediakan oleh ISP diblokir melalui pemblokiran request outbound port 53 selain menuju ke server ISP. Beberapa ISP seperti Biznet menggunakan DPI untuk memblokir DNS plain dengan melihat *fingerprint* dari request client daripada memblokir port nya langsung sehingga port 53 bisa digunakan kecuali untuk query DNS  | Biznet, Melsa, Smartfren |
| Membelokan akses DNS secara transparan | Dikenal juga sebagai "DNS transparan atau Transparent DNS", ISP dapat membelokkan sambungan ke layanan DNS alternatif, biasanya dengan nomor port 53, agar hanya dapat menuju layanan DNS yang disediakan oleh ISP secara transparan. | Indihome, MyRepublic, Firstmedia, XL, Lintasarta |
| Memodifikasi data DNS secara langsung | Dikenal juga sebagai "*DNS injection*" (injeksi DNS), ISP menggunakan sistem DPI atau Proxy dapat memodifikasi data DNS secara langsung sesaat melalui jaringan ISP jika terdeteksi situs yang diblokir agar situs tersebut tidak dapat diakses atau diarahkan ke situs notifikasi pemblokiran akses. | Telkom Astinet, PT Lexa Net |

[Kembali ke "Navigasi](#navigasi)

### Pemblokiran berbasis DPI

Sedang dikerjakan.

[Kembali ke "Navigasi](#navigasi)

## Menentukan metode pemblokiran yang digunakan

Sedang dikerjakan, intinya langkah-langkah yang bisa dilakukan untuk mengecek metode pemblokiran yang digunakan oleh suatu ISP serta ciri-cirinya sehingga pengguna dapat mengetahui metode penembusan pemblokiran apa saja yang dapat digunakan.

[Kembali ke "Navigasi](#navigasi)

## Jaringan *upstream* (IP *transit*) dan *internet exchange*

> CATATAN: Masih dalam pengerjaan, isi baru saja disalin dari README.md di branch main.

> CATATAN: Hanya disediakan untuk informasi semata. Tidak diperuntukkan sebagai informasi ketika mempertimbangkan ISP yang ingin digunakan. Metode dan keketatan pemblokiran dapat berubah sewaktu-waktu. Berpindah ISP adalah proses yang mungkin rumit, mahal, atau bahkan tidak memungkinkan dikarenakan berbagai macam faktor yang diluar kendali KominFudge.

<sup><b>Untuk mengecek IP Transit apa yang ISP kita gunakan, silahkan check di https://bgp.tools atau https://bgp.he.net</b></sup><br>

[Kembali ke "Navigasi](#navigasi)

### Jaringan *upstream* (IP *transit*)

| Nomor AS | Nama | Pemblokiran berbasis DNS | Pemblokiran berbasis DPI | Catatan | Contoh ISP yang kena (Max 5) |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [AS4800](https://bgp.tools/as/4800) | PT Aplikanusa Lintasarta | [DNS Transparan (Port 53 dibelokan ke server)](assets/proofs/png/AS4800-1.png?raw=1) | Ya | [Lintasarta membelokan port 53 ke server mereka sendiri sehingga DNS lain selain punya mereka dan ISP masing-masing tidak akan berfungsi jika ISP merutekan servernya melalui Lintasarta walaupun DNS server nya ada di Indonesia dan mereka memakai DPI di gateway menuju luar negeri](assets/proofs/png/AS4800-2.png?raw=1) | Netciti, Varion |
| [AS137366](https://bgp.tools/as/137366) | PT iForte Solusi Infotek | Tidak | [Ya](assets/image.png?raw=1) | Tidak Memblokir Vimeo. | MNC Play, Transvision |
| [AS4761](https://bgp.tools/as/4761) | INDOSAT Internet Network Provider | Tidak | [Ya](assets/proofs/png/AS23951-AS4761.png?raw=1) |  | Citranet, Nusanet |
| [AS58495](https://bgp.tools/as/58495) / [AS138840](https://bgp.tools/as/138840) | PT Parsaoran Global Datatrans (HSP-NET) | Tidak | [Ya](assets/proofs/png/AS58495-HSP-IX.png?raw=1) | | Megavision, MNC Play |
| [AS17451](https://bgp.tools/as/17451) | BIZNET NETWORKS | Tidak | Ya | | |
| [AS4787](https://bgp.tools/as/4787) | PT Cyberindo Aditama (CBN) | Tidak | Ya | | |
| [AS138128](https://bgp.tools/as/138128) | PT Solnet Indonesia | Tidak | [Ya](assets/proofs/png/AS138128-DPI-Proof.png?raw=1) | [Bukti dari traceroute](assets/proofs/png/AS138128-DPI-Traceroute.png?raw=1) | | ProNET |
| [AS149684](https://bgp.tools/as/149684) | PT. Kreatif Pasific | Tidak | Ya | | |
| [AS9341](https://bgp.tools/as/9341) / [AS38757](https://bgp.tools/as/38757)  | PT. Indonesia Comnet Plus (ICONNET) | Tidak | Ya | | |

[Kembali ke "Navigasi](#navigasi)

### *Internet exchange*

| Nama | Pemblokiran berbasis DPI | CDN yang terdampak | Catatan |
| :---: | :---: | :---: | :---: |
| BIX - Biznet Internet Exchange | Ya | [Cloudflare, dan semua CDN yang terhubung dengan BIX](assets/proofs/png/BIX.png?raw=1) | Walaupun pake GoodbyeDPI, Powertunnel, dll tidak akan bisa karena dari sisi Server sudah diblokir oleh Biznet sendiri

[Kembali ke "Navigasi](#navigasi)

## ISP dan metode pemblokiran yang digunakan

> CATATAN: Masih dalam pengerjaan, isi baru saja disalin dari README.md di branch main.

Berikut ini adalah daftar ISP dan metode pemblokiran yang digunakan:

### ISP serat optik (*fiber optic*) 
**ISP Rumah**

| Nama | Pemblokiran berbasis DNS | Pemblokiran berbasis DPI | Mengirim paket TCP RST ke *server* | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Indihome | Ya (Out, Local) | Ya | Ya | ISP dari Telkom untuk rumah. |
| CBN | Ya | Ya | Tidak | |
| Biznet Home | Ya (Out, Local) | Ya | Tidak | |
| MyRepublic | Ya (Out, Local) | Ya | Tidak | Sistem DPI hanya memblokir situs dewasa. |
| FirstMedia | Ya (Out, Local) | Ya | Tidak | |
| Megavision | Ya (Out, Local) | Tergantung perutean | ? | Dikenal juga sebagai StarNET. Terdampak sistem DPI dari jaringan upstream PT Parsaoran Global Datatrans. |
| Jujung Net | Ya | Ya | Ya | ISP dari PT Parsaroan Global Datatrans untuk rumah. |
| MNC | Ya | Tergantung perutean | ? | Terdampak sistem DPI dari jaringan upstream iForte. |
| Iconnet PLN | Ya | Ya | Ya | |
| PT Netciti Persada | Ya | Tergantung perutean | ? | Terdampak DNS Nasional dan sistem DPI dari jaringan upstream Lintasarta. |
| Oxygen | Ya (Out) | Ya | Tidak | Dikenal juga sebagai Moratelindo, memblokir layanan DNS alternatif milik Google yang menggunakan DoH dan DoT dan nomor port alternatif DNS 5353. |
| Citranet | Ya | Tergantung perutean | ? | DPI sesuai dengan upstream Citranet. Jika lewat Indosat dan beberapa upstream mereka, maka dijamin kena |
| Padi Net | Ya (Out, Local) | Tidak | ? | |
| Fiberstream | Ya (Out, Local) | Tidak | ? | ISP dari G-MEDIA untuk rumah. |
| Balifiber | Ya | Tidak | ? | |
| PT Media Cepat Indonesia | Ya (Out, Local) | Tidak | ? | |
| Melsa | Ya (Out, Local) | Tidak | ? | Layanan DNS alternatif milik Google tidak diblokir. |

[Kembali ke "Navigasi](#navigasi)

**ISP Kantor**

| Nama | Pemblokiran berbasis DNS | Pemblokiran berbasis DPI | Mengirim TCP RST ke *server* | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Astinet | Ya (DNS Injection Out) | Ya | ? | ISP dari Telkom untuk kantor. |
| Linknet | Ya | Tidak | Tidak | ISP dari Firstmedia untuk kantor. |
| Lintasarta | Ya (Out, Local) | Ya | Ya | |
| Metronet | Ya (Out) | Ya | Ya | Dikenal juga sebagai Biznet Dedicated. |
| PT Metrasat | Ya | Ya | ? | |
| PT Pasifik Satelit Nusantara | Ya | Tidak | ? | |
| PT Artha Telekomindo | Ya | Tidak | ? | |
| PT Hawk Teknologi Solusi | Ya | Tidak | ? | |
| PT Jaringanku Sarana Nusantara | Ya (Out, Local) | Tidak | ? | Dikenal juga sebagai JSN. |
| PT. Infotama Lintas Global | Ya (Out, Local) | Tidak | ? | |
| PT Remala Abadi | Ya | Tidak | Tidak | Dikenal juga sebagai Tachyon. |
| PT iForte Global internet | Ya | Ya | Tidak | Sistem DPI tidak memblokir Vimeo. |
| PT Cipta Informatika Cemeriang | Ya | Tidak | ? | |
| PT Lexa Net | Ya (DNS Injection by proxy In and Out) | Tidak | ? | Dikenal juga sebagai PT Lexa Global Akses. |
| PT Media Sarana Data  | Ya (Out, Local) | Tidak | ? | Dikenal juga sebagai G-MEDIA. |
| PT Artorius Telemetri Sentosa | Ya | Tidak | ? | |
| D-NET | Ya | Tidak | ? | Dikenal juga sebagai PT Core Mediatech, hanya membelokkan akses ke layanan DNS alternatif milik Google, Cloudflare, dan Quad9. | |
| PT Sumber Koneksi Indotelematika | Ya | Tidak | ? | |
| ProNET | Ya | Tergantung perutean | Ya | Dikenal juga sebagai PT Trisari Data Indonesia, memblokir beberapa layanan DNS alternatif domestik dan internasional, terdampak TCP RST dari jaringan upstream Solnet. |
| PT Media Jaringan Telekomunikasi | Ya | Tidak | ? | |
| PT Sekawan Global Komunika | Ya | Tidak | ? | |
| PT INFORMASI NUSANTARA TEKNOLOGI | Ya | Tidak | ? | |
| Orion Cyber Internet | Ya | Tidak | ? | Membelokkan akses menuju beberapa layanan DNS alternatif ke layanan DNS milik ISP. |
| PT AGTI | Ya (Out, Local) | Tidak | ? | Dikenal juga sebagai PT Arjuna Global Teknologi Indonesia. |
| PT Parsaoran Global Datatrans | Ya | Ya | Ya (Lemah) | Dikenal juga sebagai HSP NET. |
| PT Fiber Networks Indonesia | Ya (Out, Local) | Tidak | ? | Dikenal juga sebagai FIBERNET. |
| PT Power Telecom Indonesia | Ya | Ya | ? | Sistem DPI tidak memblokir Vimeo. |
| PT Solnet Indonesia | Ya | Ya | Ya | |

[Kembali ke "Navigasi](#navigasi)

### ISP selular / *mobile*

| Nama | Pemblokiran berbasis DNS | Pemblokiran berbasis DPI | Mengirim TCP RST ke *server* | Catatan |
| :---: | :---: | :---: | :---: | :---: |
| Telkomsel / By.U / KartuHalo | Ya (Out, Local) | Ya | Ya | |
| XL / Axis / Live On | Ya (Out, Local) | Ya | Ya | | 
| 3 | Ya (Google, OpenDNS) | Ya | Ya | |
| Indosat | Ya | Ya | Tidak | |
| Smartfren | Ya (Out, Local) | Ya | Tidak | Memblokir layanan DNS alternatif milik Google yang menggunakan DoH dan DoT. |

[Kembali ke "Navigasi](#navigasi)

## Berkontribusi kepada KominFudge

KominFudge adalah sebuah proyek terbuka yang tidak akan mungkin tanpa kontribusi [sosok-sosok berikut ini.](CREDITS.md)

Siapapun dapat menambahkan informasi baru dan berkontribusi kepada repositori ini setelah dicek oleh pengelola repositori melalui proses *pull request* atau disingkat sebagai PR.

- Untuk pembaca yang tidak pernah menggunakan GitHub sebelumnya, silahkan baca [dokumen ini.](masih-placeholder-contrib-tutorial)
- Untuk panduan berkontribusi, silahkan baca [dokumen ini.](CONTRIBUTING.md)

[Kembali ke "Navigasi"](#navigasi)

<p align="center">Share projek ini</p>
<div id="sosial">
 <p align="center">
  <a href="https://twitter.com/intent/tweet?text=https%3A//github.com/MeFinity/KominFudge%20%23BlokirKominfo%20%23BlokirGakPakeMikir"><img src="https://img.shields.io/badge/Twitter-blue?style=flat&logo=twitter&logoColor=white"/></a>
  <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/MeFinity/KominFudge"><img src="https://img.shields.io/badge/Facebook-1877F2?style=flat&logo=facebook&logoColor=white"/></a>
 </p>
</div>

<div align="center">
 <img src="/assets/icon/logo.svg#gh-dark-mode-only" width="500">
 <img src="/assets/icon/logo-black.svg#gh-light-mode-only" width="500"><br><br>
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
| Pemblokiran berbasis DNS | Dengan membatasi layanan DNS yang dapat digunakan, penyensoran dapat dilakukan dengan membalas permintaan alamat IP situs yang diblokir dengan alamat IP situs notifikasi pemblokiran akses. |
| Pemblokiran berbasis DPI | Dengan memantau akses Internet dan memeriksa setiap paket data secara mendalam, sistem DPI dapat mengidentifikasi sambungan menuju situs yang diblokir dan menutup atau mengarahkan sambungan tersebut ke halaman notifikasi pemblokiran akses sebelum *server* tujuan dapat merespon. |

[Kembali ke "Navigasi](#navigasi)

### Pemblokiran berbasis DNS

Karena protokol DNS bersifat tidak terenkripsi dan tidak dapat memverifikasi *server* yang ingin dituju serta integritas data, protokol tersebut rentan terhadap manipulasi dan modifikasi yang tak diinginkan melalui berbagai macam cara.

Pemblokiran berbasis DNS umumnya diterapkan dengan memaksa klien agar hanya dapat menggunakan layanan DNS yang disediakan oleh ISP melalui tiga metode berikut ini yaitu:

| Nama metode | Cara kerja | Contoh ISP yang menerapkan |
| :---: | :--- | :---: |
| Memblokir akses layanan DNS lain | Akses menuju layanan DNS publik popular / luar negeri dapat diblokir dari alamat IP, nomor port, atau jenis protokol yang digunakan maupun kombinasi dari ciri-ciri tersebut atau seluruhnya. | 3 (IP kepala 116), Orion Cyber Internet, Nusanet, PT Centrin Utama, Oxygen  |
| Memblokir port DNS selain menuju ke DNS ISP | Akses menuju layanan DNS selain yang disediakan oleh ISP diblokir melalui pemblokiran request outbound port 53 selain menuju ke server ISP.<br /><br />Beberapa ISP seperti Biznet menggunakan sistem DPI untuk memblokir DNS tak terenkripsi dengan melihat *fingerprint* dari klien daripada memblokir *port*-nya secara langsung sehingga *port* 53 tetap bisa digunakan kecuali untuk *query* DNS  | **ISP yang mengikuti DNS Nasional seperti:** Biznet, Melsa, Smartfren, 3 (Kepala IP non 116) |
| Membelokan akses DNS secara transparan<br />(*DNS redirection*) | Dikenal juga sebagai "DNS transparan" atau "*Transparent DNS*", ISP dapat membelokan sambungan ke layanan DNS alternatif agar hanya dapat menuju layanan DNS yang disediakan oleh ISP secara transparan. | **ISP yang mengikuti DNS Nasional seperti:** Indihome, MyRepublic, Firstmedia, XL, Megavision |

Jika klien berhasil dipaksa untuk menggunakan layanan DNS yang disediakan oleh ISP, maka ISP dapat menegakkan penyensoran Internet dengan membalas permintaan alamat IP situs yang diblokir dengan alamat IP yang menuju ke situs notifikasi pemblokiran akses. Ini juga dikenal sebagai "*DNS hijacking*" dan hampir semua ISP di Indonesia dibawah Trust+ menerapkan metode ini.

ISP juga dapat menggunakan sistem DPI untuk mengubah isi data DNS yang dikirim oleh layanan DNS alternatif secara *real-time*. Metode ini juga dikenal sebagai "*DNS injection*" (injeksi DNS) dan ISP seperti Telkom Astinet dan PT Lexa Net adalah contoh ISP yang menerapkannya.

[Kembali ke "Navigasi](#navigasi)

### Pemblokiran berbasis DPI

Deep Packet Inspection (DPI) adalah teknik yang digunakan dalam jaringan komputer untuk menganalisis konten paket data yang dikirim melalui jaringan. DPI memungkinkan ISP/Kominfo untuk memeriksa secara rinci isi paket data, termasuk header dan payload, untuk mendapatkan semua data yang lewat dalam jaringan tersebut.

Berikut adalah langkah-langkah umum dalam cara kerja Deep Packet Inspection:
1. Penerimaan Paket Data: Setiap kali paket data dikirim melalui jaringan, perangkat DPI menerima paket tersebut.
2. Analisis Header: Perangkat DPI menganalisis informasi header paket, seperti alamat sumber dan tujuan, protokol yang digunakan (seperti TCP atau UDP), dan informasi lainnya yang terkandung dalam header. Hal ini membantu dalam mengidentifikasi sumber paket dan tujuannya.
3. Rekonstruksi Payload: DPI juga dapat memulihkan isi payload (konten) dari paket data. Payload dapat berupa data teks, file, atau protokol lain yang digunakan dalam komunikasi.
4. Penganalisisan Konten: Setelah payload direkonstruksi, perangkat DPI menganalisis konten paket data. Analisis ini dapat mencakup pencocokan pola atau tanda tangan tertentu untuk mengidentifikasi jenis data yang dikirim, seperti protokol jaringan, aplikasi, atau jenis file tertentu.
5. Pengambilan Keputusan: Setelah analisis konten dilakukan, perangkat DPI dapat mengambil keputusan berdasarkan kebijakan atau aturan yang telah ditentukan sebelumnya. Misalnya, perangkat DPI dapat memutuskan untuk memblokir paket yang mengandung ancaman keamanan atau melanggar kebijakan jaringan.

Cara Great Firewall of Indonesia bekerja adalah dengan mengirimkan paket RST ke client (dan terkadang servernya juga) jika mendeteksi user mengunjungi situs yang diblokir dengan melihat headernya. Ini mengapa mengganti DNS atau sebagainya tidak akan bekerja jika ISP anda memakai DPI untuk memblokir situs.

Header yang ditargetkan untuk memblokir website ialah
- Host header<br>
  Host header merupakan identifikasi pada header http yang mengandung informasi situs yang akan kita kunjungi dan dikirimkan tanpa enkripsi sehingga Great Firewall of Indonesia bisa membacanya, menyamar menjadi server tujuan, dan membelokan request ke `http://lamanlabuh.aduankonten.id` dikarenakan situs http tidak mempunyai pengecekan seperti https dengan certificate<br>
  
  ![image](https://github.com/bebasid/KominFudge/assets/115700386/848147a7-a296-4686-a83e-52a844aeaeaf)<br>
 
 - SNI (Server Name Indication)<br>
   SNI (Server Name Indication) merupakan identifikasi pada header https yang mengandung informasi situs yang kita kunjungi dan biasa dikirimkan dengan bentuk plaintext sehingga bisa dibaca. Dikarenakan https bersifat terenkripsi dan aman, maka untuk memblokir situs https hanya bisa mengirimkan paket RST agar tidak bisa diakses karena semua data yang lewat terenkripsi dengan sertifikat SSL
   
   ![image](https://github.com/bebasid/KominFudge/assets/115700386/1e774621-2495-4434-860c-6a3d747d47e0)<br>
   ![image](https://github.com/bebasid/KominFudge/assets/115700386/f0c4c87d-e172-44f6-8102-d3996b3e3669)<br>
 
[Kembali ke "Navigasi](#navigasi)

## Menentukan metode pemblokiran yang digunakan

Sedang dikerjakan, intinya langkah-langkah yang bisa dilakukan untuk mengecek metode pemblokiran yang digunakan oleh suatu ISP serta ciri-cirinya sehingga pengguna dapat mengetahui metode penembusan pemblokiran apa saja yang dapat digunakan.

[Kembali ke "Navigasi](#navigasi)

## Jaringan *upstream* (IP *transit*) dan *internet exchange*

> CATATAN: Hanya disediakan untuk informasi semata. Tidak diperuntukkan sebagai informasi ketika mempertimbangkan ISP yang ingin digunakan. Metode dan keketatan pemblokiran dapat berubah sewaktu-waktu. Berpindah ISP adalah proses yang mungkin rumit, mahal, atau bahkan tidak memungkinkan dikarenakan berbagai macam faktor yang diluar kendali KominFudge.
>
> Untuk mengecek IP Transit apa yang ISP Anda gunakan, silahkan cek di https://bgp.tools atau https://bgp.he.net

[Kembali ke "Navigasi](#navigasi)

### Jaringan *upstream* (IP *transit*)

| Nomor AS | Nama | Memblokir via DNS | Memblokir via DPI | Catatan | Contoh ISP yang kena (Max 5) |
| :---: | :---: | :---: | :---: | :---: | :---: |
| [AS4800](https://bgp.tools/as/4800) | PT Aplikanusa Lintasarta | [DNS Nasional](assets/proof/png/AS4800-1.png?raw=1) | Ya | [Lintasarta membelokan port 53 ke server mereka sendiri sehingga DNS lain selain punya mereka dan ISP masing-masing tidak akan berfungsi jika ISP merutekan servernya melalui Lintasarta walaupun DNS server nya ada di Indonesia dan mereka memakai DPI di gateway menuju luar negeri](assets/proof/png/AS4800-2.png?raw=1) | Netciti, Varion |
| [AS137366](https://bgp.tools/as/137366) | PT iForte Solusi Infotek | Tidak | [Ya](assets/image.png?raw=1) | Tidak Memblokir Vimeo. | MNC Play, Transvision, MTM Bali |
| [AS4761](https://bgp.tools/as/4761) | INDOSAT Internet Network Provider | Tidak | [Ya](assets/proof/png/AS23951-AS4761.png?raw=1) |  | Citranet, Nusanet |
| [AS58495](https://bgp.tools/as/58495) / [AS138840](https://bgp.tools/as/138840) | PT Parsaoran Global Datatrans (HSP-NET) | Tidak | [Ya](assets/proofs/png/AS58495-HSP-IX.png?raw=1) | | Megavision, MNC Play |
| [AS17451](https://bgp.tools/as/17451) | BIZNET NETWORKS | Tidak | Ya | | |
| [AS4787](https://bgp.tools/as/4787) | PT Cyberindo Aditama (CBN) | Tidak | Ya | | |
| [AS138128](https://bgp.tools/as/138128) | PT Solnet Indonesia | Tidak | [Ya](assets/proof/png/AS138128-DPI-Proof.png?raw=1) | [Bukti dari traceroute](assets/proofs/png/AS138128-DPI-Traceroute.png?raw=1) | | ProNET |
| [AS131219](https://bgp.tools/as/131219) | Indosat Singapore Pte Ltd | Tidak | Ya | | |
| [AS9341](https://bgp.tools/as/9341) / [AS38757](https://bgp.tools/as/38757)  | PT. Indonesia Comnet Plus (ICONNET) | Tidak | Ya | | |
| [AS55655](https://bgp.tools/as/55655) | PT Saranainsan Mudaselaras | Tidak | Ya |  | MNC Play |
| [AS18351](https://bgp.tools/as/18351) | PT Media Akses Global Indo | Tidak | Ya |  | |
| [AS18351](https://bgp.tools/as/18351) | DTPNET NAP | Tidak | [Ya](https://media.discordapp.net/attachments/1109515185108046015/1109935886889656450/image.png?width=648&height=559) |  |  |
| [AS136106](https://bgp.tools/as/136106) | PT Mega Akses Persada (Fiberstar) | Tidak | Ya |  | MyRepublic, Mayatama |

[Kembali ke "Navigasi](#navigasi)

### *Internet exchange*

| Nama | Pemblokiran berbasis DPI | CDN yang terdampak | Catatan |
| :---: | :---: | :---: | :---: |
| BIX - Biznet Internet Exchange | Ya | [Cloudflare, dan semua CDN yang terhubung dengan BIX](assets/proofs/png/BIX.png?raw=1) | Walaupun pake GoodbyeDPI, Powertunnel, dll tidak akan bisa karena dari sisi Server sudah diblokir oleh Biznet sendiri

[Kembali ke "Navigasi](#navigasi)

### *Virtual Private Server (VPS)*

<sup><b>VPS lokal banyak yang terkena dari [Upstream yang mereka pakai](#Jaringan). Sebelum membeli VPS lokal untuk membypass blokiran, pastikan cek upstream mereka di https://bgp.tools atau https://bgp.he.net terlebih dahulu sebelum menggunakannya</b></sup><br>

| Provider VPS | Terkena DPI | Dari Upstream | Catatan |
| :---: | :---: | :---: | :---: |
| PT Herza Digital Indonesia | Iya | Sendiri (Provider VPS ini menerapkan DPI)  |
| Hostinger | Iya | PT Aplikanusa Lintasarta | |
| PT Cloud Hosting Indonesia | Iya | Biznet Internet Exchange (BIX) | Terkena karena situs Cloudflare di routing ke BIX |
| PT Atharva Telematika Persada | Iya | Indosat Singapore Pte Ltd **via** PT Kreatif Pasific |

## ISP dan metode pemblokiran yang digunakan

Berikut ini adalah daftar ISP dan metode pemblokiran yang digunakan:

### ISP serat optik (*fiber optic*)

**ISP Rumah**

| Nama | Metode pemblokiran DNS | Mengikuti DNS Nasional | Pemblokiran berbasis DPI | Mengirim paket TCP RST ke *server* | Catatan |
| :---: | :---: | :---: | :---: | :---: | :---:|
| Indihome | DNS Hijacking | Ya | Ya | Ya | ISP dari Telkom untuk rumah. |
| CBN | DNS Hijacking | Tidak | Ya | Tidak | |
| Biznet Home | DNS Hijacking | Ya (DPI memblokir request DNS di port 53) | Ya | Tidak | Terkena DPI di BIX |
| MyRepublic | DNS Hijacking | Ya | Ya | Tidak | Sistem DPI hanya memblokir situs dewasa. |
| FirstMedia | DNS Hijacking | Ya | Ya | Tidak | |
| Megavision | DNS Hijacking | Ya | Tergantung perutean | ? | Dikenal juga sebagai StarNET. Terdampak sistem DPI dari jaringan upstream PT Parsaoran Global Datatrans. |
| Jujung Net | DNS Hijacking | ? | Ya | Ya | ISP dari PT Parsaroan Global Datatrans untuk rumah. |
| MNC | DNS Hijacking | Ya | Tergantung perutean | ? | Terdampak sistem DPI dari jaringan upstream iForte. |
| Iconnet PLN | DNS Hijacking | Ya | Ya | Ya | |
| Netciti | DNS Hijacking | Aslinya tidak, terkena dampak dari Lintasarta | Tergantung perutean | ? | Terdampak DNS Nasional dan sistem DPI dari jaringan upstream Lintasarta. |
| Oxygen | DNS Hijacking | Ya (Lokal aman) | Ya | Tidak | Dikenal juga sebagai Moratelindo, memblokir layanan DNS alternatif milik Google yang menggunakan DoH dan DoT dan nomor port alternatif DNS 5353. |
| Citranet | DNS Hijacking | Tidak | Tergantung perutean | ? | DPI sesuai dengan upstream Citranet. Jika lewat Indosat dan beberapa upstream mereka, maka dijamin kena |
| Padi Net | DNS Hijacking | Ya | Tidak | ? | |
| Fiberstream | DNS Hijacking | Ya | Tidak | ? | ISP dari G-MEDIA untuk rumah. |
| Balifiber | DNS Hijacking | Tidak | Tidak | ? | |
| PT Media Cepat Indonesia | DNS Hijacking | Ya | Tidak | ? | |
| Melsa | DNS Hijacking | Ya | Tidak | ? | Layanan DNS alternatif milik Google tidak diblokir. |
| MTM Bali | DNS Hijacking | Tidak | Tergantung Perutean | ? | Jika melewati Lintasarta, iForte maka akan kena DPI / Akan kena DNS Nasional jika lewat Lintasarta |

[Kembali ke "Navigasi](#navigasi)

**ISP Kantor**

| Nama | Metode pemblokiran DNS | Mengikuti DNS Nasional | Pemblokiran berbasis DPI | Mengirim paket TCP RST ke *server* | Catatan |
| :---: | :---: | :---: | :---: | :---: | :---:|
| Astinet | DNS Injection | Tidak | Ya | ? | ISP dari Telkom untuk kantor. |
| Linknet | DNS Hijacking | Tidak | Tidak | Tidak | ISP dari Firstmedia untuk kantor. |
| Lintasarta | DNS Hijacking | Iya | Ya | Ya | |
| Biznet Metronet | DNS Hijacking | Ya | Ya | Ya | Dikenal juga sebagai Biznet Dedicated. |
| PT Metrasat | DNS Hijacking | Ya | Ya | ? | |
| PT Pasifik Satelit Nusantara | DNS Hijacking | Tidak | Tidak | ? | |
| PT Artha Telekomindo | DNS Hijacking | Tidak | Tidak | ? | |
| PT Hawk Teknologi Solusi | DNS Hijacking | Tidak | Tidak | ? | |
| PT Jaringanku Sarana Nusantara | DNS Hijacking | Ya | Tidak | ? | Dikenal juga sebagai JSN. |
| PT. Infotama Lintas Global | DNS Hijacking | Ya | Tidak | ? | |
| PT Remala Abadi | DNS Hijacking | Tidak | Tidak | Tidak | Dikenal juga sebagai Tachyon. |
| PT iForte Global internet | DNS Hijacking | Tidak | Ya | Tidak | Sistem DPI tidak memblokir Vimeo. |
| PT Cipta Informatika Cemeriang | DNS Hijacking | Tidak | Tidak | ? | |
| PT Lexa Net | DNS Injection | ? | Tidak | ? | Dikenal juga sebagai PT Lexa Global Akses. |
| PT Media Sarana Data  | DNS Hijacking | Ya | Tidak | ? | Dikenal juga sebagai G-MEDIA. |
| PT Artorius Telemetri Sentosa | DNS Hijacking | Tidak | Tidak | ? | |
| D-NET | DNS Hijacking & DNS Blocking | Tidak | Tidak | ? | Dikenal juga sebagai PT Core Mediatech, hanya membelokkan akses ke layanan DNS alternatif milik Google, Cloudflare, dan Quad9. | |
| PT Sumber Koneksi Indotelematika | DNS Hijacking | Tidak | Tidak | ? | |
| ProNET | DNS Hijacking | Tidak | Tergantung perutean | Memodifikasi data DNS | Dikenal juga sebagai PT Trisari Data Indonesia, memblokir beberapa layanan DNS alternatif domestik dan internasional, terdampak TCP RST dari jaringan upstream Solnet. |
| PT Media Jaringan Telekomunikasi | DNS Hijacking | Tidak | Tidak | ? | |
| PT Sekawan Global Komunika | DNS Hijacking | Tidak | Tidak | ? | |
| PT INFORMASI NUSANTARA TEKNOLOGI | DNS Hijacking | Tidak | Tidak | ? | |
| Orion Cyber Internet | DNS Hijacking | Tidak | Tidak | ? | Membelokkan akses menuju beberapa layanan DNS alternatif ke layanan DNS milik ISP. |
| PT AGTI | DNS Hijacking | Ya | Tidak | ? | Dikenal juga sebagai PT Arjuna Global Teknologi Indonesia. |
| PT Parsaoran Global Datatrans | DNS Hijacking | Tidak | Ya | Ya (Lemah) | Dikenal juga sebagai HSP NET. |
| PT Fiber Networks Indonesia | DNS Hijacking | Ya | Tidak | ? | Dikenal juga sebagai FIBERNET. |
| PT Power Telecom Indonesia | DNS Hijacking | Tidak | Ya | ? | Sistem DPI tidak memblokir Vimeo. |
| PT Solnet Indonesia | DNS Hijacking | Tidak | Ya | Ya | |
| PT Jala Lintas Media | DNS Hijacking | Tidak | Tidak | Tidak | |
| PT Centrin Utama | DNS Hijacking & DNS Blocking | Tidak | Tidak | Tidak | Membelokan DNS Google, OpenDNS, Level3, dan subnet DNS OpenDNS (`208.67.222.0/24` dan `208.67.220.0/24`) ke server mereka |
| PT Mitra Visioner Pratama | DNS Hijacking | Tidak | Ya | Ya | Punya PT Saranainsan Mudaselaras |
| PT. DATAUTAMA DINAMIKA | DNS Hijacking | Tidak | Ya | Ya | Terkena dari Lintasarta |

[Kembali ke "Navigasi](#navigasi)

### ISP selular / *mobile*

| Nama | Metode pemblokiran DNS | Mengikuti DNS Nasional | Pemblokiran berbasis DPI | Ada IP yang aman dari DPI | Mengirim paket TCP RST ke *server* | Catatan |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| Telkomsel / By.U / KartuHalo | DNS Hijacking | Ya | Ya | Ya | Ya |
| XL / Axis / Live On | DNS Hijacking | Ya | Ya | Tidak | Ya | 
| 3 | DNS Hijacking & DNS Blocking | Tidak | Ya | Tidak | Tidak | Membelokan DNS Google dan OpenDNS ke server mereka |
| Indosat | DNS Hijacking | Tidak | Ya | Ya | Tidak |
| Smartfren | DNS Hijacking | Ya | Ya | Ya | Tidak | Memblokir layanan DNS alternatif milik Google yang menggunakan DoH dan DoT. |

[Kembali ke "Navigasi](#navigasi)

## Berkontribusi kepada KominFudge

KominFudge adalah sebuah proyek terbuka yang tidak akan mungkin tanpa kontribusi [sosok-sosok berikut ini.](CREDITS.md)

Siapapun dapat menambahkan informasi baru dan berkontribusi kepada repositori ini setelah dicek oleh pengelola repositori melalui proses *pull request* atau disingkat sebagai PR.

- Untuk pembaca yang tidak pernah menggunakan GitHub sebelumnya, silahkan baca [dokumen ini.](masih-placeholder-contrib-tutorial)
- Untuk panduan berkontribusi, silahkan baca [dokumen ini.](CONTRIBUTING.md)

[Kembali ke "Navigasi"](#navigasi)

<p align="center">Share proyek ini</p>
<div id="sosial">
 <p align="center">
  <a href="https://twitter.com/intent/tweet?text=https%3A//github.com/MeFinity/KominFudge%20%23BlokirKominfo%20%23BlokirGakPakeMikir"><img src="https://img.shields.io/badge/Twitter-blue?style=flat&logo=twitter&logoColor=white"/></a>
  <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/MeFinity/KominFudge"><img src="https://img.shields.io/badge/Facebook-1877F2?style=flat&logo=facebook&logoColor=white"/></a>
 </p>
</div>

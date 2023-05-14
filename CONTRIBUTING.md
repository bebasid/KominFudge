# Pengantar

Terima kasih telah tertarik untuk berkontribusi pada proyek KominFudge! Kami hargai kontribusi Anda dalam membantu mengatasi masalah sensor dari Kominfo.

Sebelum Anda mulai berkontribusi pada proyek ini, silakan periksa panduan kontribusi ini terlebih dahulu agar Anda dapat memahami bagaimana cara berkontribusi dengan benar.

## Cara Berkontribusi

Untuk berkontribusi pada proyek ini, silakan ikuti langkah-langkah berikut:

1. Fork repository KominFudge ke akun GitHub Anda dengan cara klik tombol "Fork" di pojok kanan atas halaman proyek.
2. Setelah selesai mengedit, Buka halaman proyek di akun GitHub Anda dan buat pull request dengan menekan tombol "New pull request".
3. Tunggu sampai reviewer dari proyek memeriksa kontribusi Anda dan memberikan feedback jika diperlukan. Setelah kontribusi Anda disetujui, pull request akan di-merge ke branch utama dan kontribusi Anda akan ditambahkan ke proyek.

## VPN
Jika ingin menambahkan VPN, VPN yang ditambah harus mengikuti beberapa kriteria dari [PrivacyGuides VPN criteria](https://www.privacyguides.org/en/vpn/#criteria) dan [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria), seperti:

- Senang dipakai, jika VPN memerlukan konfigurasi sebelum dipakai seperti OpenVPN, silahkan di lokasikan di [Advanced README](Advanced-README.md)
- Tidak ada informasi pribadi yang diperlukan untuk mendaftar: Paling banyak hanya username, kata sandi, dan email.
- Rekaman jejak yang baik dari perusahaan

>Catatan: VPN harus mengikuti kriteria [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria) dan kriteria yang diatas, [PrivacyGuides VPN criteria](https://www.privacyguides.org/en/vpn/#criteria) itu opsional.

### Format Penulisan

Untuk menambahkan aplikasi VPN baru, silahkan gunakan format berikut:

```
| [Nama VPN](situs vpn) | catatan (opsional, jika tidak ada, taruh (-)) | Harga |
```

Anda bisa memakai situs seperti [Table Magic](https://stevecat.net/table-magic/) untuk meformat

Anda bisa memakai ini di tabel Harga:  
**Berbayar** - Servis ini harus dibayar untuk dipakai.  
**Freemium** - Servis ini punya subskripsi gratis dan berbayar.  
**Gratis** - Servis ini 100% gratis, [Free as in Free beer](https://www.urbandictionary.com/define.php?term=Free+as+in+Beer).

## DNS
Jika ingin menambahkan DNS, DNS yang ditambah harus mengikuti kriteria dari [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria).

### Format Penulisan
Untuk menambahkan DNS baru, silahkan gunakan format berikut:
```
| Nama DNS | Catatan | `IPv4 1` | `IPv4 2` | `Port` | `IPv6` | `IPv6 2` | `DoH` | `DoT` |
```
Jika DNS bisa di konfigurasi (contoh: NextDNS), silahkan gunakan format ini:
```
| [Nama DNS](situs dns) | Bisa Diatur | Kustom | Kustom | Kustom | Kustom | Kustom | Kustom | Kustom |
```
Anda bisa memakai situs seperti [Table Magic](https://stevecat.net/table-magic/) untuk meformat

Jika DNS yang Anda tambah tidak memiliki salah satu benda di tabel, Anda bisa menaruh (-) di tabel itu seperti contoh ini:
```
| Nama DNS | Catatan | - | `IPv4 2` | - | `IPv6` | `IPv6 2` | `DoH` | `DoT` |
```
Sebelum membuat ini Anda harus periksa apakah DNS memang tidak mempunyai benda itu. Anda bisa mencari di situs [KB Adguard](https://adguard-dns.io/kb/general/dns-providers) dan [cURL wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS) jika Anda tidak mendapatkannya di situs resmi.

Jika DNS yang Anda tambah ada pemblokiran, Pakai tabel Catatan untuk memberitahukan pengguna  
Contoh:
```
| Nama DNS | DNS ini [memblokir iklan](situs sumber) | - | - | - | - | - | - | - |
```

## Aplikasi
Bagian ini berlaku untuk **Aplikasi Pengatur DNS**, **Aplikasi Penembus DPI**, dan **Menggunakan Tor**

Jika ingin menambahkan Aplikasi, Aplikasi yang ditambah harus mengikuti kriteria dari [PrivacyGuides General criteria](https://www.privacyguides.org/en/about/criteria).

### Format Penulisan
Untuk menambahkan Aplikasi baru, silahkan gunakan format berikut:
```
Nomor. [Nama Aplikasi](situs aplikasi) [platform 1, platform 2]
>Deskripsi.
```
Anda bisa mengtranslasi deskripsi resmi untuk bagian deskripsi.  

Anda harus mengikuti format ini untuk bagian Platform:
```
iOS, Android, Windows, macOS, Linux
```
Contoh benar:
```
Android, Windows, Linux
```
Contoh salah:
```
Linux, iOS, Windows
```

## Hostfile
Untuk menambahkan Hostfile baru, silahkan gunakan format berikut:
```
| Nama pemilik hostfile | [Servis](situs hostfile) | [Mirror](situs mirror) (opsional, jika tidak ada, taruh (-)) |
```
Jika Mirror beda pemilik, silahkan tambah pemilik itu juga ke tabel Nama.  

Jika Servis kurang dari 10 anda harus buat seperti contoh ini:
```
| Nama pemilik hostfile | [Servis 1, Servis 2](situs hostfile) | - |
```

Jika Servis lebih dari atau pas 10, anda harus buat seperti contoh ini:
```
| Nama pemilik hostfile | [10+](situs hostfile) | - |
```
Anda bisa memakai situs seperti [Table Magic](https://stevecat.net/table-magic/) untuk meformat

## Tutorial
Bagian ini berlaku untuk **Mengganti layanan DNS secara manual**, **Menembus DPI tanpa aplikasi**, dan **Menggunakan hosts file**

### Format Penulisan
Untuk menambahkan tutorial baru, silahkan gunakan format berikut:
```
### Di (Sistem)

>1. Tutorial
>2. 
```

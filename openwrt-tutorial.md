<p align="center">
  <img src="https://user-images.githubusercontent.com/115700386/232264116-5cef4e89-92c9-4548-b392-fc82e02747e3.png" width="600px">
</p>

<h1 align="center">TUTORIAL BYPASS DPI KOMINFO MENGGUNAKAN OPENWRT</h1>

<p align="center">
  <b><sup>Following this instruction is in your own risk. I'm not responsible for content you are trying to access after following this tutorial or the damage you done during the installation process. Please use it wisely and follow the instruction carefully</sup></b>
</p>

### Langkah Persiapan Instalasi
1. Pertama-tama, kita login ke OpenWRT kita melalui SSH sebagai admin dengan mengetikan IP dari OpenWRT kita
2. Setelah login, jalankan perintah ```opkg update``` di terminal dan tunggu sampai selesai<br>
3. Setelah itu, jalankan perintah ```opkg install iptables ip6tables git git-http nano``` untuk menginstall package yang digunakan untuk proses installasi Zapret
4. Pergi ke file tmp dengan mengetikan ```cd /tmp``` di Terminal<br>
5. Jalankan perintah ```git clone https://github.com/bol-van/zapret.git``` dan tunggu sampai selesai<br>

### Bypass DNS Nasional
Karena Kominfo menerapkan peraturan DNS Nasional yang dimana setiap ISP wajib membelokan Port 53 ke server ISP dan probing tehnik bypassnya Zapret akan menggunakan resolve DNS, kita harus membypass DNS ISP terlebih dahulu sebelum melakukan proses installasi Zapret

<b>Ada 3 cara untuk bypass:</b><br>
- <b>Menggunakan host BebasID</b><br>
   - Buatlah file bernama bebasid di system dengan mengetikan ```touch /etc/bebasid``` di terminal
   - Buka filenya dengan mengetikan ```nano /etc/bebasid```
   - Silahkan copy isi hosts <a href="https://raw.githubusercontent.com/bebasid/bebasid/master/releases/hosts" target="_blank">BebasID</a> kedalam file yang kita buat tadi lalu save
   - Login ke OpenWRT melalui Web dengan mengetikan IP dari OpenWRT, lalu pergi ke <b>Network >> DHCP & DNS</b><br>
     ![image](https://user-images.githubusercontent.com/115700386/232265676-e1c5f8a7-e7ec-47e8-afe2-b703ee64e48f.png)
   - Pergi ke bagian <b>Resolv and Hosts Files</b>, tambahkan `/etc/bebasid` dibagian <b>Additional hosts files
</b> dan klik + seperti dibawah ini:<br>
     ![image](https://user-images.githubusercontent.com/115700386/232265727-0596f6b2-5e58-4cdd-bb24-302a44f76162.png)
   - Klik Save & Apply 
   - Untuk mengecek apakah Host BebasID sudah terpasang dengan benar, jalankan `nslookup lamanlabuh.aduankonten.id` di terminal OpenWRT<br>
     <p align="center"><img src="https://user-images.githubusercontent.com/115700386/232265834-d88744e5-bb59-462f-82e9-20c24434a6b3.png"><br>
     <b><sup>Jika hasilnya seperti diatas ini, maka konfigurasi host BebasID telah berhasil</sup></b></p><br>
- <b>Menggunakan DNS dengan port selain 53</b><br>

<p align="center"><b>( TO BE CONTINUED... )</b></p>

### Installasi Zapret
1.  Setelah selesai menjalankan perintah <i>git clone</i> di terminal, silahkan navigasi ke /tmp/zapret dengan mengetikan ```cd /tmp/zapret``` di terminal<br>
2.  Jalankan ```./install-easy.sh``` di Terminal
3.  Jika muncul pesan 
    ```
    easy install is supported only from default location : /opt/zapret 
    currently its run from /tmp/zapret
    do you want the installer to copy it for you (default : N) (Y/N) ?
    ```
    Silahkan ketik `Y` dan Enter
4.  Untuk Firewall, pilih iptables dengan mengetik 1 dan enter<br>
    ![image](https://user-images.githubusercontent.com/115700386/232266676-b901a3a2-3cf1-48d1-87ee-bbce9d8e0721.png)<br>
5.  Untuk enable IPv6 support, silahkan pilih `Y` untuk jaga-jaga<br>
    ![image](https://user-images.githubusercontent.com/115700386/232266756-e24ba6de-df68-4b65-bce7-e39c3e8669b3.png)<br>
6.  Untuk Mode, silahkan pilih `3` dan enter<br>
    ![image](https://user-images.githubusercontent.com/115700386/232266796-e218738c-8399-4469-93c4-b81146730fdc.png)<br>
7.  Pastikan enable HTTP support, HTTPS support di enablekan dengan pilih `Y` pada saat proses instalasi <br>
    ![image](https://user-images.githubusercontent.com/115700386/232266856-6abfb4da-e52a-41a9-a720-ae71e2ed293a.png)<br>
8.  Setelah itu klik Enter sampai selesai
9.  Hapus folder Zapret di /tmp untuk menyimpan memory<br>
    

### Konfigurasi Zapret
1.  Pergi ke folder `cd /opt/zapret/` dan jalankan script `./install_bin.sh`
2.  Saat proses sudah berhasil, silahkan jalankan `./blockpage.sh` untuk mencari setting Zapret yang optimal untuk ISP anda
3.  Jika muncul pesan:
    ```
    specify domain(s) to test. multiple domains are space separated.
    domain(s) (default: rutracker.org) :
    ```
    Silahkan isi dengan domain yang diblokir Kominfo (Misalkan: `reddit.com`, `vimeo.com`, `omegle.com`, dll)
4.  Jika muncul presan `ip protocol version`, sesuaikan dengan jaringan anda
    - Misalkan jaringan anda hanya support IPv4, maka ketik `4` dan enter
    - Tetapi, jika Jaringan anda support IPv4 dan IPv6, maka ketik `46` dan enter
5.  Klik Enter sampai pesan `how many times to repeat each test (default: 1)`. Ketik `2` dan Enter
6.  Setelah itu, akan muncul pesan berbunyi `do all test despite of result?`. Ketik Y dan Enter
7.  Tunggu hingga Zapret menemukan settingan optimal untuk ISP anda 
8.  Jika sudah selesai, akan muncul seperti ini:<br>
    ![image](https://user-images.githubusercontent.com/115700386/232272140-d9b62495-493e-4170-93d9-c8b70eae965a.png)<br>
    Catat hasilnya
9. Lorem Ipsum


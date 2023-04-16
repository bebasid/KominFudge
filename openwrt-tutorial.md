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


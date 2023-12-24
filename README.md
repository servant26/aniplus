<h1>Cara Pemasangan :</h1>
1. Download dan Install XAMPP dulu (bagi yang belum punya), link XAMPP klik disini : https://www.apachefriends.org/download.html <br>
2. Install XAMPP seperti menginstall software pada umumnya (tinggal next-next saja) <br>
3. Buka XAMPP, lalu klik tombol start pada bagian Apache dan MySQL <br>
4. Buka browser kalian (bebas mau itu mozilla, chrome, opera atau yang lain) lalu ketik http://localhost/phpmyadmin <br>
5. Download source code github ini (caranya liat keatas, cari tombol warna hijau yang tulisannya "Code", di klik aja nanti muncul dropdown <br>
6. Lihat opsi paling bawah, terdapat teks "Download ZIP", silahkan di download <br>
7. Setelah selesai download, letakkan file zip ini kedalam XAMPP -> htdocs (jika kalian bingung dimana letak folder htdocs, tinggal klik kanan pada icon XAMPP saja lalu pilih opsi "Open file location" nanti dia akan langsung menuju ke folder XAMPP yang didalamnya ada folder htdocs <br>
8. Ekstrak file zip tadi menggunakan "Extract here" oiya ekstraknya didalam folder htdocs yaa <br>
9. Setelah berhasil diekstrak, akan muncul beberapa folder, salah satunya adalah folder bernama db yang isinya terdapat file bernama aniplus.sql, file inilah yang akan kita import ke database nanti<br>
10. Buka lagi http://localhost/phpmyadmin lalu cari yang namanya "Import" (biasanya ada dibagian menu atas disebelah Export) <br>
11. Setelah menekan tombol import, pilih telusuri lalu cari file aniplus.sql tadi (Ingat!! file aniplus.sql berada didalam folder bernama db) <br>
12. Kemudian langsung klik tombol import saja <br>
13. Setelah di import buka folder XAMPP->htdocs->aniplus, kemudian diatasnya (dibagian path) langsung saja ketik cmd, nanti cmdnya akan langsung menuju ke halaman web tersebut <br>
14. Setelah pathnya terhubung, ketikkan php artisan serve pada cmd tadi agar webnya bisa berjalan <br>
15. Terakhir, buka browser dan ketikkan localhost:8000/ dan lihat apa yang terjadi, web telah berjalan dengan baik

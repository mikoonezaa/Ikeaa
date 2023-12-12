// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, unused_field
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uas/detail.dart';
import 'package:uas/keranjang.dart';
import 'package:uas/model/model_wishlist.dart';

class Ikea extends StatefulWidget {
  const Ikea({super.key});

  @override
  State<Ikea> createState() => _IkeaState();
}

class _IkeaState extends State<Ikea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
            height: 40, width: 110, child: Image.asset('/logoikea.png')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.search_normal_1,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.notification,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Keranjang()));
              },
              icon: Icon(
                Iconsax.shopping_cart,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Cari Barang Impianmu",
                      prefixIcon: Icon(Iconsax.search_normal_1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  Image.asset(
                    '/gambargede.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _produk('/kamartidur.png', 'Kamar Tidur'),
                      _produk('/ruangtamu.png', 'Ruang Kerja'),
                      _produk('/dapur.png', 'Dapur'),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _produk('/bayidananak.png', 'Bayi Dan Anak'),
                      _produk('/tekstil.png', 'Tekstil'),
                      _produk('/penyimpanan.png', 'Penyimpanan'),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Produk Populer',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0058AB)),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: _category('/gantungan.png', 'KROKFJORDEN',
                                'Pengait dengan\nplastik isap ...', 'RP99.000'),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailIkea()));
                              },
                              child: _category(
                                  '/meja.png',
                                  'ALEX/LAGKAPTEN',
                                  'Meja, hijau muda/\nputih, 120x60 cm',
                                  'RP1.909.000'),
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: _category(
                                '/lemari.png',
                                'FARDAL/PAX',
                                'Kombinasi lemari\npakaian, putih/hig...',
                                'RP8.400.000'),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: _category(
                                '/lemari.png',
                                'FARDAL/PAX',
                                'Kombinasi lemari\npakaian, putih/hig...',
                                'RP8.400.000'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Telusuri Koleksi Kami',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0058AB)),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('/blavingad.png'),
                      Image.asset('/VINTERFINT.png')
                    ],
                  ),
                  SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Penawaran Terkini',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0058AB)),
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _category(String Gambar, String Judul, String Detail, String Harga) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          Gambar,
          width: 146,
          height: 146,
        ),
        Text(
          Judul,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          Detail,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 12),
        Text(
          Harga,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Column _produk(String gambar, String Judul) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          gambar,
          fit: BoxFit.cover,
          width: 117,
        ),
        SizedBox(height: 8),
        Text(
          Judul,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

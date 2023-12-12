// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, unnecessary_brace_in_string_interps, unnecessary_string_escapes, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uas/home.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  List<int> hargaAlex = [0, 1350000, 2700000, 4050000, 5400000, 6750000];
  List<int> hargaMackapar = [0, 1499000, 2998000, 4497000, 5996000, 7495000];
  int alex = 1;
  int mackapar = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              child: Container(
                color: Color(0xffE7E7E7),
                height: 2,
              ),
              preferredSize: Size.fromHeight(2)),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Keranjang',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Ikea()));
            },
            child: Icon(
              Iconsax.arrow_left_1,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.heart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: '2 ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Barang',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6c6c6c)))
                      ])),
                  Text(
                    'Hapus Semua',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0058AB)),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset('./r16.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'ALEX',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Unit laci, abu-abu toska,\n36x70 cm',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6C6C6C)),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '\Rp${hargaAlex[alex]}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              width: 72,
                              height: 38,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffE7E7E7))),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Iconsax.trash)),
                            ),
                            SizedBox(width: 16),
                            Container(
                                width: 183,
                                height: 38,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffE7E7E7))),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (alex > 0) {
                                              setState(() {
                                                alex = alex - 1;
                                              });
                                            }
                                          });
                                        },
                                        icon: Icon(Iconsax.minus)),
                                    SizedBox(width: 45),
                                    Text(
                                      '${alex}',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 45),
                                    IconButton(
                                        onPressed: () {
                                          if (alex < hargaAlex.length - 1) {
                                            setState(() {
                                              alex = alex + 1;
                                            });
                                          }
                                        },
                                        icon: Icon(Iconsax.add))
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset('./r16(5).png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'MACKAPÄR',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Kabinet/tempat sepatu, putih,\n80x35x102 cm',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6C6C6C)),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '\Rp${hargaMackapar[mackapar]}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              width: 72,
                              height: 38,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffE7E7E7))),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Iconsax.trash)),
                            ),
                            SizedBox(width: 16),
                            Container(
                                width: 183,
                                height: 38,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffE7E7E7))),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (mackapar > 0) {
                                              setState(() {
                                                mackapar = mackapar - 1;
                                              });
                                            }
                                          });
                                        },
                                        icon: Icon(Iconsax.minus)),
                                    SizedBox(width: 45),
                                    Text(
                                      '${mackapar}',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 45),
                                    IconButton(
                                        onPressed: () {
                                          if (mackapar < hargaAlex.length - 1) {
                                            setState(() {
                                              mackapar = mackapar + 1;
                                            });
                                          }
                                        },
                                        icon: Icon(Iconsax.add))
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 16),
          width: 430,
          height: 104,
          decoration:
              BoxDecoration(border: Border.all(color: Color(0xffE7E7E7))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 14, 50, 14),
                      color: Color(0xff0058AB),
                      child: TextButton(
                          onPressed: () {}, child: Text('Beli Sekarang',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  '\Rp${hargaAlex[alex] + hargaMackapar[mackapar]}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, unused_element

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Inspirasi extends StatefulWidget {
  const Inspirasi({super.key});

  @override
  State<Inspirasi> createState() => _InspirasiState();
}

class _InspirasiState extends State<Inspirasi> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget Kategori(String title, int id) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = id;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == id ? Color(0xff0058AB) : Colors.grey),
            color: selectedIndex == id ? Color(0xff0058AB) : Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
          child: Text(
            '${title}',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: selectedIndex == id ? Colors.white : Colors.grey,
            ),
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Text(
                'Inspirasi',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'Koleksi',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'Edukasi',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ]),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Temukan Inspirasi',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.search_normal_1,
                    color: Colors.black,
                  )),
              SizedBox(width: 24),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.shopping_cart, color: Colors.black))
            ],
          ),
          body: TabBarView(children: [
            Column(
              children: [
                SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      children: [
                        Kategori('Semua', 1),
                        SizedBox(width: 16),
                        Kategori('Ruang Kerja', 2),
                        SizedBox(width: 16),
                        Kategori('Dapur', 3),
                        SizedBox(width: 16),
                        Kategori('Ruang Keluarga', 4),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                    padding: const EdgeInsets.only(left: 19, right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('/r33.png'),
                            SizedBox(height: 16),
                            Text(
                              'Hunian Compact Yang\nNyaman',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('/r34.png'),
                            SizedBox(height: 16),
                            Text(
                              'Lakukan 5 Hal Ini Agar\nSepatumu Bebas...',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('/r40.png'),
                    SizedBox(height: 16),
                    Text(
                      'Hadirkan nuasa elegant dan fancy kedalam\nkamar tidur anda',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(left: 19, right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('/r42.png'),
                          SizedBox(height: 16),
                          Text(
                            'Hunian Compact Yang\nNyaman',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('/r41.png'),
                          SizedBox(height: 16),
                          Text(
                            'Lakukan 5 Hal Ini Agar\nSepatumu Bebas...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Center(child: Text('COMING SOON!!!')),
            Center(child: Text('COMING SOON!!!')),
          ])),
    );
  }
}

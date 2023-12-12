// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_brace_in_string_interps
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uas/home.dart';

class DetailIkea extends StatefulWidget {
  @override
  State<DetailIkea> createState() => _DetailIkeaState();
}

class _DetailIkeaState extends State<DetailIkea> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'ALEX/LAGKAPTEN',
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.w600, 
            color: Colors.black 
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => Ikea()));
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
              Iconsax.search_normal_1,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.share,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
        children: [
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
              children: [
                Image.asset('/gambar2.png'),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('/mejakecil.png'),
                    Image.asset('/triplek.png'),
                    Image.asset('/rak.png'),
                    Image.asset('/tiang.png'),
                    Image.asset('/ruangkerjakecil.png'),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ALEX/LAGKAPTEN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Iconsax.heart,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 16), // Add some spacing
                Container(
                  alignment: Alignment.topLeft, // Align the new Text widgets to the left
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Meja, hijua muda/putih, 120x60 cm',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rp1.909.000',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset('/stars.png', width: 18, height: 18,color: Colors.yellow,),
                          Image.asset('/stars.png', width: 18, height: 18,color: Colors.yellow,),
                          Image.asset('/stars.png', width: 18, height: 18,color: Colors.yellow,),
                          Image.asset('/stars.png', width: 18, height: 18,color: Colors.yellow,),
                          Image.asset('/stars.png', width: 18, height: 18,color: Colors.yellow,),
                          SizedBox(width: 7,),
                          Text(
                            '4.5 | Terjual 116',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff6C6C6C)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1B1B1B),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 43),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffE7E7E7)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24,bottom: 17, left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE7E7E7)),
                  borderRadius: BorderRadius.circular(1)
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if(index > 1) {
                            index = index - 1;
                          }  
                        });
                      }, 
                      icon: Icon(Iconsax.minus,size: 26,)
                    ),
                    SizedBox(width: 10,),
                    Text('${index}',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          index ++;
                        });
                      }, 
                      icon: Icon(Iconsax.add,size: 26,)
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff0058AB),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: TextButton(
                  onPressed: (){}, 
                  child: Text('Tambah Keranjang',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),)
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

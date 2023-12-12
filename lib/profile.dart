// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Menu Akun',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Iconsax.setting,
                  color: Colors.black,
                )),
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 26),
            child: Row(
              children: [
                Image.asset('./codeqr.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Miko Ahmadineza',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 6),
                      Text('160002359102020',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7))
              ),
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Icon(Iconsax.profile_circle),
                SizedBox(width: 16),
                Text('Profile Saya',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7))
              ),
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Icon(Iconsax.box),
                SizedBox(width: 16),
                Text('Pesanan',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7))
              ),
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Icon(Iconsax.star),
                SizedBox(width: 16),
                Text('Ulasan',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7))
              ),
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Icon(Iconsax.gift),
                SizedBox(width: 16),
                Text('Reward Saya',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7))
              ),
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              children: [
                Icon(Iconsax.info_circle),
                SizedBox(width: 16),
                Text('Bantuan',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE7E7E7))
              ),
            ),
          ),
        ],
      ),
    );
  }
}

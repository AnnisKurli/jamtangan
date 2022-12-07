import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:rent_app/homepage/category_card.dart';

class HomePageShort extends StatelessWidget {
  const HomePageShort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 188, 188),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'JAMTANGAN.ID',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mail_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'KATEGORI',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 47,
              ),
              // baris 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // camera card
                  CategoryCard(gambar: 'SKMEI', judul: 'SKMEI'),
                  // speaker card
                  CategoryCard(gambar: 'speaker', judul: 'Sound System'),
                ],
              ),
              const SizedBox(
                height: 53,
              ),
              // baris 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // tenda card
                  CategoryCard(gambar: 'tenda', judul: 'Tent'),
                  // kursi card
                  CategoryCard(gambar: 'kursi', judul: 'Chair & Table'),
                ],
              ),
              const SizedBox(
                height: 53,
              ),
              // baris 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // decoration card
                  CategoryCard(gambar: 'decoration', judul: 'Decoration Set'),
                  // others card
                  CategoryCard(gambar: '', judul: 'Others', others: true),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
     
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/homeController.dart';

class insertSiswa extends StatelessWidget {
  const insertSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    homeController Hc = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: Hc.siswaController,
              decoration: InputDecoration(label: Text('Nama')),
              onSubmitted: (nama){
                Hc.addSiswa(nama);
                Get.toNamed('/sec');
              },
            )
          ],
        ),
      ),
    );
  }
}

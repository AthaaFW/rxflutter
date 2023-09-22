import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/homeController.dart';

class insertMapel extends StatelessWidget {
  const insertMapel({super.key});

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
              controller: Hc.kodeMapelController,
              decoration: InputDecoration(label: Text('kode')),
            ),
            TextField(
              controller: Hc.mapelController,
              decoration: InputDecoration(label: Text('Nama Mapel')),
            ),
            ElevatedButton(
                onPressed: () {
                  Hc.addMapel(Hc.kodeMapelController.text, Hc.mapelController.text);
                  Get.toNamed('/sec');
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}

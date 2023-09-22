import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/homeController.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    homeController Hc = Get.put(homeController());

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: Hc.textController,
              decoration: InputDecoration(label: Text('Nama')),
              onSubmitted: (value) {
                Hc.setName(Hc.textController.text);
                Get.snackbar('Nama', Hc.nama.value);
                Get.defaultDialog(
                    title: "Halow",
                    middleText: Hc.nama.value,
                    onConfirm: () {
                      Get.toNamed('/sec');
                    },
                    onCancel: () {});
                Get.bottomSheet(Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Text(Hc.nama.value),
                ));
              },
            ),
            Text(Hc.nama.value)
          ],
        ),
      ),
    );
  }
}

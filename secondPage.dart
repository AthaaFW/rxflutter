import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxatha/controller/homeController.dart';
import 'package:rxatha/home.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    homeController Hc = Get.find();

    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       margin: EdgeInsets.all(20),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             margin: EdgeInsets.all(20),
    //             padding:
    //                 EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
    //             decoration: BoxDecoration(
    //                 color: Colors.white,
    //                 borderRadius: BorderRadius.circular(15),
    //                 boxShadow: [
    //                   BoxShadow(
    //                       color: Colors.black12, blurRadius: 2, spreadRadius: 2)
    //                 ]),
    //             child: Text(
    //               'Hallo ${Hc.nama.value}!!',
    //               style: TextStyle(fontSize: 25),
    //             ),
    //           ),
    //           Obx(
    //             () => Switch(
    //               value: Hc.isOpen.value,
    //               onChanged: (bool value) {
    //                 Hc.setOpen(value);
    //               },
    //               activeColor: Colors.green,
    //             ),
    //           ),
    //           ElevatedButton(
    //               onPressed: () {
    //                 Get.toNamed('/');
    //               },
    //               child: Text('Back')),
    //           SizedBox(height: 20,),
    //           TextField(
    //             controller: Hc.siswaController,
    //             decoration: InputDecoration(
    //               label: Text('Siswa')
    //             ),
    //           ),
    //           ElevatedButton(onPressed:(){
    //             Hc.addSiswa(Hc.siswaController.text);
    //           } , child: Text('Submit')),
    //           Obx(() => ListView.builder(
    //             shrinkWrap: true,
    //             itemCount: Hc.listname.length,
    //             itemBuilder: (context, index){
    //               return Text(Hc.listname.value[index]);
    //             },
    //           ))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Get.bottomSheet(Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0, color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed('/ins');
                        },
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Center(
                                child: Text(
                              'Insert Siswa',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed('/inm');
                        },
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Center(
                                child: Text(
                              'Insert Mapel',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Center(
                                child: Text(
                              'Insert Siswa',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
            },
            icon: const Icon(Icons.menu_rounded),
            tooltip: 'Open menu',
          )
        ],
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(
                  'XII RPL 1',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.lightGreenAccent),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GetBuilder<homeController>(
                          builder: (Hc) {
                            return Text(
                                "Jumlah siswa : ${Hc.siswa.toString()}");
                          },
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if(Hc.siswa < 37){
                                  Hc.increaseSiswa();
                                }else{
                                }
                              },
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightGreenAccent,
                                  elevation: 0),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if(Hc.siswa > 0){
                                  Hc.decreaseSiswa();
                                }else{}
                              },
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightGreenAccent,
                                  elevation: 0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Text(
                              Hc.isOpen.value ? 'Open' : 'Close',
                              style: Hc.isOpen.value
                                  ? TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)
                                  : TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                            )),
                        Obx(
                          () => Switch(
                              activeColor: Colors.blue,
                              value: Hc.siswa == 37 ? true : Hc.isOpen.value,
                              onChanged: (bool value) {
                                  Hc.setOpen(value);
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(
                  'NAMA SISWA',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.lightGreenAccent),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Obx(
                      () => Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: Hc.listname.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Text(Hc.listname.value[index], style: TextStyle(fontSize: 16),),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(
                  'DAFTAR MATAPELAJARAN',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.lightGreenAccent),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Obx(() => Expanded(child: 
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: Hc.mapel.length,
                        itemBuilder: (context, index){
                          String key = Hc.mapel.keys.elementAt(index);
                          String values = Hc.mapel.values.elementAt(index);
                          return Row(
                            children: [
                              Text("$key", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                              Text("$values", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                            ],
                          );
                        })
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

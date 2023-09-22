import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class homeController extends GetxController{
  TextEditingController textController = TextEditingController();
  TextEditingController siswaController = TextEditingController();
  TextEditingController mapelController = TextEditingController();
  TextEditingController kodeMapelController = TextEditingController();

  int _siswa = 36;
  int get siswa=> _siswa;
  RxString nama = ''.obs;
  RxBool isOpen = RxBool(false);
  RxList<String> listname = RxList<String>(['Udin', 'Ucok']);
  RxMap<String, String> mapel = RxMap();


  void addMapel(String key, String namapel){
    mapel[key] = namapel;
  }

  void setName (String nm){
    nama.value = nm;
    print(nama.value);
  }

  void setOpen (value){
    isOpen(value);
    print(isOpen);
  }

  void increaseSiswa (){
    _siswa++;
    update();
    print(_siswa);
  }
  void decreaseSiswa (){
    _siswa--;
    update();
  }
  void addSiswa (String nama){
    listname.add(nama);
  }
}
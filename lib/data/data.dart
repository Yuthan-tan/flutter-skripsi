import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "Untuk Menggunakan Aplikasi Tersebut Di Haruskan Untuk Login Terlebih Dahulu");
  sliderModel.setTitle("Masuk");
  sliderModel.setImageAssetPath("assets/awal.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(
      "Setelah Login Kalian Dapat Membuat Sebuah Jobdesk Yang Kalian Ingin Kerjakan Nanti");
  sliderModel.setTitle("Melihat Pekerjaan");
  sliderModel.setImageAssetPath("assets/kedua.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Di Aplikasi Tersebut Kalian Juga Dapat Melihat Divisi Yang Ada DI Perusahaan Loka Indira Amarta.");
  sliderModel.setTitle("Divisi");
  sliderModel.setImageAssetPath("assets/terakhir.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}

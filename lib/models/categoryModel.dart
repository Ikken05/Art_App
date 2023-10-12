import 'package:flutter/material.dart';

class ArtCategoryModel {
  String artCategoryName;
  String artIcon;
  Color artBoxColor;

  //Constructor
  ArtCategoryModel(
      {required this.artCategoryName,
      required this.artIcon,
      required this.artBoxColor});

  static List<ArtCategoryModel> getArtCategories() {
    List<ArtCategoryModel> artCategories = [];

    artCategories.add(ArtCategoryModel(
        artCategoryName: "Architecture",
        artIcon: 'assets/icons/Architecture.svg',
        artBoxColor: Color.fromARGB(255, 80, 127, 228)));
    artCategories.add(ArtCategoryModel(
        artCategoryName: "Inking",
        artIcon: 'assets/icons/Inking.svg',
        artBoxColor: Color.fromARGB(255, 101, 101, 160)));
    artCategories.add(ArtCategoryModel(
        artCategoryName: "Sketching",
        artIcon: 'assets/icons/Sketching.svg',
        artBoxColor: Color.fromARGB(255, 107, 79, 116)));
    artCategories.add(ArtCategoryModel(
        artCategoryName: "Water Colours",
        artIcon: 'assets/icons/Watercolors.svg',
        artBoxColor: Color.fromARGB(255, 88, 54, 54)));
    artCategories.add(ArtCategoryModel(
        artCategoryName: "Digital Art",
        artIcon: 'assets/icons/DigitalArtwork.svg',
        artBoxColor: Color.fromARGB(255, 50, 91, 94)));

    return artCategories;
  }
}

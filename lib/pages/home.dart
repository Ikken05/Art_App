import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introproject/models/categoryModel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ArtCategoryModel> artCategories = [];

  void _getArtCategories() {
    artCategories = ArtCategoryModel.getArtCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getArtCategories();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 249, 240, 1),
      appBar: appBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [searchField(), categoriesDisplay()]),
    );
  }

  Column categoriesDisplay() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 25),
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 34, 34, 34),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
          child: Container(
            height: 150,
            color: Color.fromARGB(255, 190, 196, 190),
            child: ListView.builder(
              itemCount: artCategories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: artCategories[index].artBoxColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                  artCategories[index].artIcon),
                            ),
                          ),
                          Text(artCategories[index].artCategoryName,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 14)),
                        ]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Container searchField() {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 50, 50, 50),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: 'Search Here',
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontFamily: 'Montserrat'),
          labelStyle: const TextStyle(color: Colors.white),
          filled: true,
          fillColor: const Color.fromRGBO(116, 116, 118, 100),
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
            child: SvgPicture.asset(
              'assets/icons/Search.svg',
              color: Colors.white,
              height: 5,
              width: 5,
            ),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: Colors.white,
                    thickness: 0.5,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: SvgPicture.asset(
                      'assets/icons/Filter.svg',
                      color: Colors.white,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'HomePage',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color.fromRGBO(50, 50, 51, 100),
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/BackArrow.svg',
            color: Colors.white,
            height: 25,
            width: 25,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 40,
            child: SvgPicture.asset(
              'assets/icons/SideBarRight.svg',
              color: Colors.white,
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}

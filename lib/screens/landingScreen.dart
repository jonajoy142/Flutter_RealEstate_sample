// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names

import 'package:flutter/material.dart';
import 'package:realestate_ui/contents.dart';
import 'package:realestate_ui/custom/borderBox.dart';
import 'package:realestate_ui/custom/optionButton.dart';
import 'package:realestate_ui/custom_function.dart';
import 'package:realestate_ui/sample_data.dart';
import 'package:realestate_ui/widget_functions.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final ThemeData themeData = Theme.of(context);
    final sidepadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child:Stack(children: [
             Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidepadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderBox(
                        padding: EdgeInsets.all(1),
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.menu,
                          color: COLOR_BLACK,
                        )),
                    BorderBox(
                        padding: EdgeInsets.all(1),
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.settings,
                          color: COLOR_BLACK,
                        ))
                  ],
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidepadding,
                child: Text(
                  'city',
                  style: themeData.textTheme.bodyText2,
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidepadding,
                child: Text(
                  'Kottayam, Kerala',
                  style: themeData.textTheme.headline1,
                ),
              ),
              Padding(
                padding: sidepadding,
                child: Divider(
                  height: padding,
                  color: Colors.grey,
                ),
              ),
              addVerticalSpace(10),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ["\$222,000", "For Sale", "3-4 Beds", ">1500 sqft"]
                      .map((filter) => Choice(text: filter))
                      .toList(),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    padding: sidepadding,
                    itemCount: DATA.length,
                    itemBuilder: (context, index) {
                      return RealEstateItem(item: DATA[index],);
                    }),
              )
            ],
          ),

          Positioned(
            bottom: 20,
            width: size.width,
            child: Center(
            child: OptionButton(icon: Icons.map_rounded,text: "Map View",width: size.width*.35,)))
          ],)
        ),
      ),
    );
  }
}

class Choice extends StatelessWidget {
  final String text;

  const Choice({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: COLOR_GREY.withAlpha(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: EdgeInsets.only(left: 20),
      child: Text(text, style: themeData.textTheme.headline5),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic item;

  const RealEstateItem({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  item["image"],
                ),
              ),
              Positioned(
                top: 15,right: 15,
                  child: BorderBox(
                padding: EdgeInsets.all(0.1),
                width: 50,
                height: 50,
                child: Icon(Icons.favorite_border_outlined, color: COLOR_BLACK),
              ))
            ],
          ),
          addVerticalSpace(15),
          Row(children: [
            Text("${formatCurrency(item["price"]) }",style: themeData.textTheme.headline2,),
            addHorizontalSpace(10),
            Text("${item["address"]}",style: themeData.textTheme.bodyText2),
           

          ],),
          addVerticalSpace(10),
          Text("${item["bedrooms"]} bedrooms / ${item["bathrooms"]} bathrooms / ${item["area"]} sqft",style: themeData.textTheme.headline5,)

        ],
      ),
    );
  }
}

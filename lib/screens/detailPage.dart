// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:realestate_ui/contents.dart';
import 'package:realestate_ui/custom/borderBox.dart';
import 'package:realestate_ui/custom/optionButton.dart';
import 'package:realestate_ui/custom_function.dart';
import 'package:realestate_ui/screens/landingScreen.dart';
import 'package:realestate_ui/widget_functions.dart';

class DetailPage extends StatelessWidget {
  final dynamic itemData;

  const DetailPage({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidepadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(itemData["image"]),
                          Positioned(
                              width: size.width,
                              top: padding,
                              child: Padding(
                                padding: sidepadding,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: BorderBox(
                                        child: Icon(
                                          Icons.keyboard_backspace,
                                          color: COLOR_BLACK,
                                        ),
                                        width: 50,
                                        height: 50,
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                    // addHorizontalSpace(350),
                                    BorderBox(
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: COLOR_BLACK,
                                      ),
                                      width: 50,
                                      height: 50,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                      addVerticalSpace(padding),
                      Padding(
                          padding: sidepadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${formatCurrency(itemData["price"])}",
                                    style: themeData.textTheme.headline1,
                                  ),
                                  addVerticalSpace(5),
                                  Text(
                                    "${itemData["address"]}",
                                    style: themeData.textTheme.subtitle2,
                                  ),
                                ],
                              ),
                              BorderBox(
                                
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  width: 130,
                                  height: 50,
                                  child: Text(
                                    "20 Hours Ago",
                                    style: themeData.textTheme.headline5,
                                  ))
                            ],
                          )),
                      addVerticalSpace(padding),
                      Padding(
                        padding: sidepadding,
                        child: Text(
                          "House Information",
                          style: themeData.textTheme.headline4,
                        ),
                      ),
                      addVerticalSpace(padding),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                          Information(content: "${itemData["area"]}",name: "Square Foot",),
                          Information(content: "${itemData["bedrooms"]}",name: "Bedrooms",),
                          Information(content: "${itemData["bathrooms"]}",name: "Bathrooms",),
                          Information(content: "${itemData["kitchen"]}",name: "Kitchen",),
                           Information(content: "${itemData["carPark"]}",name: "cat park",)

                          ],
                        ),
                      ),
                      addVerticalSpace(padding),
                      Padding(
                        padding:sidepadding,
                      child: Text(itemData["description"],textAlign: TextAlign.justify,style: themeData.textTheme.bodyText2,),)
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OptionButton(text: "Message", icon:Icons.message, width: size.width*0.35),
                       addHorizontalSpace(10),
                       OptionButton(text: "Call",icon: Icons.call,width: size.width*0.35,),
                    ],
                  ) )
              ],
            ),
          )),
    );
  }
}

class Information extends StatelessWidget {
  final String content;
  final String name;

  const Information({Key? key, required this.content, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width * 0.20;

    return Container(
      margin:const EdgeInsets.only(left:25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderBox(
              padding: EdgeInsets.zero,
              width: tileSize,
              height: tileSize,
              child: Text(
                content,
                style: themeData.textTheme.headline3,
              )
              ),
              addVerticalSpace(15),
              Text(name,style: themeData.textTheme.headline6,)
        ],
      ),
    );
  }
}

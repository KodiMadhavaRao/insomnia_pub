import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insomnia_pub/util/constants.dart';


class Offers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OffersState();
  }
}

class OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return getMainView();
  }

  Widget getMainView() {
    var gridView = new GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 140,
                height: 140,
                child: Image.asset(
                  "images/insomnialogo.png",
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text(
                  "Lorem Ipsum is simply d Lorem Ipsum is simply d Lorem Ipsum is simply d",maxLines: 2,),
                )
            ],
            );
        });
    return gridView;
  }
}

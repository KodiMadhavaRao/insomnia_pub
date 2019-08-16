import 'package:flutter/material.dart';
import 'package:insomnia_pub/util/constants.dart';

class PhotoGallery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PhotoGalleryState();
  }
}

class PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return getMainView();
  }

  Widget getMainView() {
    var gridView = new GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  "images/insomnialogo.png",
                  ),
                ),
            ],
            );
        });
    return gridView;
  }
}

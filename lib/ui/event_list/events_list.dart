import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EventsListState();
  }
}

class EventsListState extends State<EventsList> {
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
                  "images/insomnialogo.png",fit: BoxFit.fill,
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

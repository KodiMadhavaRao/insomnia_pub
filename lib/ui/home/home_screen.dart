import 'package:flutter/material.dart';
import 'package:insomnia_pub/ui/event_list/events_list.dart';
import 'package:insomnia_pub/ui/home/carousel_with_indicator.dart';
import 'package:insomnia_pub/ui/offers/offers.dart';
import 'package:insomnia_pub/ui/packages/packages.dart';
import 'package:insomnia_pub/ui/photo_gallery/photo_gallery.dart';
import 'package:insomnia_pub/ui/table_booking/table_booking.dart';
import 'package:insomnia_pub/util/constants.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<MyHomePage> {
  int page;

  @override
  void initState() {
    page = Constants.EVENTS;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: getMainView(page),
      drawer: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            textTheme: TextTheme(
              body1: TextStyle(color: Color(0xFFD0D6DB)),
            )),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        "images/insomnialogo.png",
                      ),
                      width: 80,
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(
                                "images/facebook_sidemenu.png",
                              ),
                              width: 20,
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(
                                "images/instagram_sidemenu.png",
                              ),
                              width: 20,
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(
                                "images/twitter_side_menu.png",
                              ),
                              width: 20,
                              height: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                color: page == Constants.EVENTS ? Constants.COLORMAIN : Colors.black,
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "images/calender_side_menu.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Events'),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    changeView(Constants.EVENTS);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                color: page == Constants.OFFERS ? Constants.COLORMAIN : Colors.black,
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "images/offers_side_menu.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Special Offers'),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    changeView(Constants.OFFERS);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                color: page == Constants.TABLEBOOKING ? Constants.COLORMAIN : Colors.black,
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "images/tablereservation_side_menu.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Table Reservation'),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    changeView(Constants.TABLEBOOKING);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                color: page == Constants.PHOTOGALLERY ? Constants.COLORMAIN : Colors.black,
                child: Container(
                  color: page == Constants.PHOTOGALLERY ? Constants.COLORMAIN : Colors.black,
                  child: ListTile(
                    title: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "images/gallery_side_menu.png",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Gallery'),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      changeView(Constants.PHOTOGALLERY);
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                color: page == Constants.PACKAGES ? Constants.COLORMAIN : Colors.black,
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "images/package_side_menu.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Packages'),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    changeView(Constants.PACKAGES);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                color: page == Constants.FEEDBACK ? Constants.COLORMAIN : Colors.black,
                child: ListTile(
                  title: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "images/feedback_Side_menu.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Feedback'),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  push(BuildContext buildContext, Widget navWidgets) {
    Navigator.push(
      buildContext,
      MaterialPageRoute(builder: (context) => navWidgets),
    );
  }

  Widget getMainView(int id) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                CarouselDemo(),
                getTitle(id),
                Flexible(
                  flex: 1,
                  child: getSelectedMainWidget(id),
                ),
              ],
            ),
            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              left: 0,
              right: 0,
              top: 0,
            )
          ],
        ),
      ),
    );
  }

  Widget getSelectedMainWidget(int id) {
    switch (id) {
      case Constants.EVENTS:
        return EventsList();
        break;
      case Constants.OFFERS:
        return Offers();
        break;
      case Constants.PACKAGES:
        return Packages();
        break;
      case Constants.PHOTOGALLERY:
        return PhotoGallery();
        break;
      case Constants.TABLEBOOKING:
        return TableBooking();
        break;
    }
  }

  void changeView(int id) {
    setState(() {
      page = id;
    });
  }

  Widget getTitle(int id) {
    switch (id) {
      case Constants.EVENTS:
        return getTitleView("EVENTS LIST");
        break;
      case Constants.OFFERS:
        return getTitleView("OFFERS");
        break;
      case Constants.PACKAGES:
        return getTitleView("Packages");
        break;
      case Constants.PHOTOGALLERY:
        return getTitleView("Photo Gallery");
        break;
      case Constants.TABLEBOOKING:
        return getTitleView("Table Booking");
        break;
    }
  }

  Widget getTitleView(String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        value,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300, color: Constants.COLORMAIN),
      ),
    );
  }
}

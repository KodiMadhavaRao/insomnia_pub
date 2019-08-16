import 'package:flutter/material.dart';
import 'package:insomnia_pub/util/constants.dart';
import 'package:insomnia_pub/util/number_counter.dart';

class TableBooking extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TableBookingState();
  }
}

class TableBookingState extends State<TableBooking> {
  @override
  Widget build(BuildContext context) {
    return getMainView();
  }

  Widget getMainView() {
    return SingleChildScrollView(
        child: Container(margin: EdgeInsets.all(8.0), child: createForm()));
  }

  Column createForm() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        getLabelvalueView(
            "YOUR NAME",
            Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            "Your Name"),
        getLabelvalueView("EMAIL ADDRESS", Icon(Icons.email, color: Colors.black), "Email Address"),
        getLabelvalueView("MOBILE", Icon(Icons.phone_android, color: Colors.black), "Mobile"),
        getGuestsView(),
        getDateTimePicker(),
        Padding(padding: EdgeInsets.all(5)),
        getReservationButton()
      ],
    );
  }

  Widget getLabelvalueView(String label, Icon icon, String hint) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
        child: Text(label),
      ),
      new Container(
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          border: new Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: Container(
          color: Colors.white,
          child: new TextField(
            textAlign: TextAlign.left,
            decoration: new InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey[700]),
              prefixIcon: icon,
              border: InputBorder.none,
            ),
          ),
        ),
      )
    ], crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget getGuestsView() {
    return Row(
      children: <Widget>[
        Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                    child: Text("SELECT GUEST/S")),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        NumberCount(
                          initialCount: 0,
                          label: "Male",
                          onCountValueChange: onMaleChange,
                        ),
                        NumberCount(
                          initialCount: 0,
                          label: "Female",
                          onCountValueChange: onFemailChange,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            flex: 6),
        Padding(
          padding: EdgeInsets.only(right: 5),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                child: Text("NO OF GUESTS GOING"),
              ),
              Container(
//                width: double.infinity,
                height: 35,
                color: Colors.white,
                child: DropdownButtonHideUnderline(
                  child: Theme(
                    data: ThemeData.light(),
                    child: DropdownButton(
                      isExpanded: true,
                      items: getItem(),
                      onChanged: onDropDownChange,
                      style: TextStyle(color: Colors.black),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          flex: 4,
        )
      ],
    );
  }

  Widget getCountView(String text) {
    return Row(
      children: <Widget>[
        Text(text, style: TextStyle(color: Colors.black)),
        Card(
          child: Icon(Icons.remove, size: 16, color: Colors.white),
          shape: CircleBorder(),
        ),
        Text(
          "1",
          style: TextStyle(color: Colors.black),
        ),
        Card(
          child: Icon(Icons.add, size: 16, color: Colors.white),
          shape: CircleBorder(),
        )
      ],
    );
  }

  void onMaleChange(int value) {
    setState(() {});
  }

  void onFemailChange(int value) {
    setState(() {});
  }

  List<DropdownMenuItem<int>> getItem() {
    List<DropdownMenuItem<int>> items = [
      DropdownMenuItem(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "1 People",
            softWrap: true,
          ),
        ),
      ),DropdownMenuItem(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "2 People",
            softWrap: true,
          ),
        ),
      ),DropdownMenuItem(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "3 People",
            softWrap: true,
          ),
        ),
      ),DropdownMenuItem(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "4 People",
            softWrap: true,
          ),
        ),
      ),
    ];
    return items;
  }

  void onDropDownChange(int value) {}

  Container getReservationButton() {
    return Container(
        width: double.infinity,
        height: 45,
        child: RaisedButton(
          color: Constants.COLORMAIN,
          child: Text("Reserve Table"),
          onPressed: () {},
        ));
  }

  Widget getDateTimePicker() {
    return Row(
      children: <Widget>[
        Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(bottom: 5.0, top: 5.0), child: Text("DATE")),
                Container(
//                width: double.infinity,
                  height: 35,
                  color: Colors.white,
                  child: DropdownButtonHideUnderline(
                    child: Theme(
                      data: ThemeData.light(),
                      child: DropdownButton(
                        isExpanded: true,
                        items: getItem(),
                        onChanged: onDropDownChange,
                        style: TextStyle(color: Colors.black),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            flex: 6),
        Padding(
          padding: EdgeInsets.only(right: 5),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                child: Text("TIME"),
              ),
              Container(
//                width: double.infinity,
                height: 35,
                color: Colors.white,
                child: DropdownButtonHideUnderline(
                  child: Theme(
                    data: ThemeData.light(),
                    child: DropdownButton(
                      isExpanded: true,
                      items: getItem(),
                      onChanged: onDropDownChange,
                      style: TextStyle(color: Colors.black),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          flex: 4,
        )
      ],
    );
  }
}

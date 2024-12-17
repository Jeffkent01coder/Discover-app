import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<String> _locations = ["Nairobi", "Meru", "Transzoia", "West Pokot"];
  int _activeLocation = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            left: false,
            right: false,
            bottom: true,
            minimum: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.05,
                0,
                MediaQuery.of(context).size.width * 0.05,
                0),
            child: _mainColumn(context)));
  }

  Widget _mainColumn(BuildContext _context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black87,
              size: 35,
            ),
            Container(
              height: 39,
              width: 144,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/logo_discover.png"),
                ),
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.black87,
              size: 35,
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(_context).size.height * 0.03),
          child: _locationBar(_context),
        ),
      ],
    );
  }

  Widget _locationBar(BuildContext _context) {
    return Container(
      height: MediaQuery.of(_context).size.height  *0.065,
      decoration: BoxDecoration(
          color: Color.fromRGBO(69, 69, 69, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _locations.map((l) {
          bool _isActive = _locations[_activeLocation] == l ? true : false;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l,
                style: TextStyle(fontSize: 15, color: _isActive ? Colors.white : Colors.white54),
              ),
              _isActive ? 
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                height: 5,
                width: 30,
              ): Container(),
            ],
          );
        }).toList(),
      ),
    );
  }
}

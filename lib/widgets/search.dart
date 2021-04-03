import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      width: _folded ? 34 : 280,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.transparent,
        // boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, top: 1.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.white,
                // boxShadow: kElevationToShadow[6],
              ),
              child: !_folded
                  ? TextField(
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.blue),
                        border: InputBorder.none,
                      ),
                    )
                  : null,
            ),
          ),
          Container(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_folded ? 34 : 0),
                  topRight: Radius.circular(34),
                  bottomLeft: Radius.circular(_folded ? 34 : 0),
                  bottomRight: Radius.circular(34),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 1.5),
                  child: Icon(
                    _folded ? Icons.search : Icons.arrow_back_sharp,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _folded = !_folded;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

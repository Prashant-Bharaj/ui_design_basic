

import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BizCard',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BizClass(),
    );
  }
}

class BizClass extends StatefulWidget {
  @override
  _BizClassState createState() => _BizClassState();
}

class _BizClassState extends State<BizClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,


      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          _getContainer(),
          _getImage(),
        ],
      ),
    );
  }

Container  _getContainer() {
    return Container(width: 300,
      height: 250,
      margin: EdgeInsets.all(50.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(27.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('hello i am there for you'),
          Text('name Prashant Singh')
        ],
      ),
    );
}

Container  _getImage() {
/*    return Container(
      alignment: Alignment.center,
      child: CircleAvatar(
        child: Container(
          child: Image(
            image: AssetImage('images/photo.jpg'),
            fit: BoxFit.cover,
          ),
          ),
        ),
    );*/
return Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
    border: Border.all(color: Colors.redAccent, width: 1.2),
    image: DecorationImage(image: AssetImage('images/photo.jpg'),
    fit: BoxFit.cover)
  ),
);
}
}


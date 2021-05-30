import 'package:flutter/material.dart';

_button(){
  debugPrint('Tapped on alarm');
}
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('hello again!'),
          duration: Duration(seconds: 1),
          backgroundColor: Colors.blue,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Text('hello tap on me'),
      ),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('App Bar')),
          backgroundColor: Colors.purple.shade500,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.email),onPressed: () => debugPrint("on icon clicked"),
            ),
            IconButton(
              icon: Icon(Icons.alarm),onPressed: _button,
            )
          ],
        ),
        backgroundColor: Color.alphaBlend(Colors.green.shade200, Colors.white),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomButton()
//                  InkWell(
//                    child: Text('hello tap on me!',
//                      style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25.4),
//                    ),
//                    onTap:() => debugPrint('tapped.....'),
//                    onDoubleTap: () => print('on double tapped'),
//                    onLongPress: () => print('long pressed'),
//                  )
            ],
          ),
        ),
      ),
    );
  }
}


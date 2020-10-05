import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
            child: Text('showAlertDialog'),
            onPressed: () {
              showAlertDialog(context);
            },
          ),
          RaisedButton(
            child: Text('Show alert 1'),
            onPressed: () {
              showAlertDialog2(context);
            },
          ),
        ],
      ),
    );
  }
}

// replace this function with the examples above
showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget remindButton = FlatButton(
    child: Text("Remind me later"),
    onPressed: () {},
  );
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget launchButton = FlatButton(
    child: Text("Launch missile"),
    onPressed: () {},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Accept?"),
    content: Text("Terima gak nih?"),
    actions: [
      Row(
        children: [
          remindButton,
          cancelButton,
          launchButton,
        ],
      )
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog2(BuildContext context) {
  // set up the buttons
  CupertinoDialogAction remindButton = CupertinoDialogAction(
    child: Text("Remind me later"),
    onPressed: () {},
  );
  CupertinoDialogAction cancelButton = CupertinoDialogAction(
    child: Text("Cancel"),
    onPressed: () {},
  );
  CupertinoDialogAction launchButton = CupertinoDialogAction(
    child: Text("Launch missile"),
    onPressed: () {},
  );
  // set up the AlertDialog
  CupertinoAlertDialog alert = CupertinoAlertDialog(
    title: Text("Accept?"),
    content: Text("Terima gak nih?"),
    actions: [
      remindButton,
      cancelButton,
      launchButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

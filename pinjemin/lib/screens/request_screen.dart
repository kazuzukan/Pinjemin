import 'package:flutter/material.dart';
import '../components/products_grid.dart';
import '../screens/form_req.dart';

class RequestScreen extends StatefulWidget {
  static String tag = 'request-screen';

  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                print("Notification Clicked");
              })
        ],
        elevation: 5,
      ),
      body: ProductsGrid(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(FormReq.tag);
        },
        child: Icon(Icons.add)
        ),
    );
  }
}

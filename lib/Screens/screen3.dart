import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/provider/photoProvider.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              context.watch<PhotoUrl>().imageUrl,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                context.read<PhotoUrl>().changeImageUrl();
              },
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.greenAccent,
                child: Text(
                  'Change',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Prev page'),
          ),
        ],
      ),
    );
  }
}
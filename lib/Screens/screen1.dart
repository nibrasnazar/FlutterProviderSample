import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/provider/photoProvider.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
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
              Navigator.pushNamed(context, '/screen2');
            },
            child: Text('Next page'),
          ),
        ],
      ),
    );
  }
}

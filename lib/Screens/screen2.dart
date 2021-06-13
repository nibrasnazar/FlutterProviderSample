import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/provider/photoProvider.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
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
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen3');
            },
            child: Text('Next page'),
          ),
          
        ],
      ),
    );
  }
}
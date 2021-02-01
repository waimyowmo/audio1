import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void sound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded wmo({Color mycolor, int my_num}) {
    return Expanded(
      child: FlatButton(
        color: mycolor,
        onPressed: () {
          sound(my_num);
        },
        child: Text('Click'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              wmo(mycolor: Colors.red, my_num: 1),
              wmo(mycolor: Colors.green, my_num: 2),
              wmo(mycolor: Colors.blue, my_num: 3),
              wmo(mycolor: Colors.pink, my_num: 4),
              wmo(mycolor: Colors.lightGreen, my_num: 5),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Text(
              'Your lottery winning number is 4',
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius:x==4? BorderRadius.circular(100) : BorderRadius.circular(50),
              ),
              child: x == 4
                  ?const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Icon(Icons.done_all,color: Colors.green,size: 50,),
                      SizedBox(height:15),
                      Text(
                        'You won \'Congratulation\'',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ])
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.grey,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Better luck next time your \n number is $x try agian',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(5);
            setState(() {});
            print(x);
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

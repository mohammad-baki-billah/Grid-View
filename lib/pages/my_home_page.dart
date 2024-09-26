import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrayColors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.grey,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrayColors[index],
            );
          },
          itemCount: arrayColors.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11),
        )
        // Column(
        //   children: [
        // Expanded(
        //   child: GridView.count(crossAxisCount: 3, children: [
        //     for (int i = 0; i < arrayColors.length; i++)
        //       Card(
        //         elevation: 10,
        //         child: Container(
        //           color: arrayColors[i],
        //         ),
        //       ),
        //   ]),
        // ),
        //   Expanded(
        //     child: GridView.extent(
        //       maxCrossAxisExtent: 100,
        //       crossAxisSpacing: 10,
        //       mainAxisSpacing: 10,
        //       children: [
        //         for (int i = 0; i < arrayColors.length; i++)
        //           Card(
        //             elevation: 10,
        //             child: Container(
        //               color: arrayColors[i],
        //             ),
        //           )
        //       ],
        //     ),
        //   ),
        // ],
        //),
        );
  }
}

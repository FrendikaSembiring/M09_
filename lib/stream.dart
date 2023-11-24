import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class contoh2 extends StatefulWidget {
  const contoh2 ({Key? key}) : super(key: key);

  @override
  State<contoh2> createState() => _contoh25State();

}

class _contoh25State extends State<contoh2> {
  int percent = 100;
  int getSteam = 0;
  double circular = 1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Stream")),
      body: Center(child: LayoutBuilder(builder: (context, Constraints){
        final double avaWidth = Constraints.maxWidth;
        final double avaHeight = Constraints.maxHeight;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: CircularPercentIndicator(
              radius: avaHeight / 5,
              lineWidth: 10,
              percent: circular,
              center: Text("$percent %"),
            ))
          ]);
      })),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';


class VendorsSpesific extends StatelessWidget {
   VendorsSpesific({super.key});
  

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return MediaQuery(
      data: MediaQueryData(),
      child: Scaffold(
        
        appBar: AppBar(title: Text("Order Summary"),centerTitle:true,backgroundColor: Colors.blueAccent,),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Container(
              decoration: BoxDecoration(color: Colors.lightBlue[900]),
              height: 20,
              width: mediaQueryData.size.width,
              child: Marquee(
              text: 'Jackpot: 10000000000\$\, Next Draw: Jan 21 10.00PM',
              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              blankSpace: 20.0,
              velocity: 100.0,
              pauseAfterRound: Duration(seconds: 1),
              startPadding: 10.0,
              accelerationDuration: Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
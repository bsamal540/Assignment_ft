//import 'dart:ffi';

import 'package:charities/userscreen1.dart';
import 'package:flutter/material.dart';

class Vendors extends StatefulWidget {
  Vendors({super.key});

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  List<int> tabValue = [];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        // leading: Icon(Icons.arrow_back),
        title: Text('Play'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              child: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VendorsSpesific()),
                );
              },
            ),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Text('Pick Your 5 Numbers'),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        spacing: 1.0,
                        runSpacing: 4.0,
                        children: List.generate(
                          tabValue.length,
                          (index) => Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text((tabValue[index] + 1).toString()),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              tabValue.shuffle();
                            });
                          },
                          child: Icon(Icons.shuffle)),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 6,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          tabValue.clear();
                        });
                      },
                      child: Text(
                        'Clear',
                        style: TextStyle(color: Colors.blue),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(180, 40)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VendorsSpesific()),
                );},
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 80,
                                  ),
                                ),
                              ),
                              title: Text('Ticket Added in Your Cart'),
                              content: Text('We Can Ckeck Your Ticket Here'),
                              actions: <Widget>[
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Purches Another Ticket',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        minimumSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(260, 40)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),



                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Checkout',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        minimumSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(260, 40)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(color: Colors.blue),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(180, 40)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: 36,
                      itemBuilder: (BuildContext context, int index) {
                        return MaterialButton(
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),

                         ),
                          elevation: 1,
                          color: tabValue.contains(index)?Colors.blue: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (tabValue.length < 5 &&
                                  !tabValue.contains(index))
                                tabValue.add(index);
                            });
                          },
                          child: Text((index + 1).toString()),
                        );

                       
                      },
                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
  }

  void showBanner(
      {required BuildContext context,
      required BannerLocation location,
      required String message,
      required MaterialColor color,
      required TextStyle textStyle}) {}
}

class TabOps {
  bool? isSelected;
  String? number;

  TabOps(this.isSelected, this.number);
}

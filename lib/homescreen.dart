import 'package:charities/userscreen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<DemoModel> demoList = [
    DemoModel('images/brand1.jpg', 'Doctors Without Borders', '\$10,000',
        "\$5,400", 0.54,
        bgColor: Colors.amber),
    DemoModel('images/brand2.jpg', 'American Red Cross', '\$10,000',
        "\$5,400", 0.2,
        bgColor: Color.fromARGB(255, 181, 37, 239)),
    DemoModel('images/brand3.jpg', 'The Nature Conserrvancy', '\$10,000',
        "\$5,400", 0.95,
        bgColor: Colors.lightGreen),
    DemoModel('images/brand3.jpg', 'Natural resources rrrrrrrrr ', '\$10,000',
        "\$5,400", 0.41,
        bgColor: Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.menu),
        title: Text('Charities'),
      ),
      
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: demoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vendors()),
              );
      
                },
                child: Container(
                     padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                     borderRadius: BorderRadius.circular(10),
              
                    color: demoList[index].bgColor,
                  
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                         
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 90.0,
                              height: 90.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage(demoList[index].imagePath!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
              
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  child: SizedBox(
                                    width: 230,
                                    child: Text(
                                      demoList[index].titleHd!,maxLines: 1,
                                      // list[index].title,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      //  mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Goals',
                                          // list[index].title,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          demoList[index].goals!,
                                          // list[index].subtitle,
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20.0),
                                    //separetor container
                                    Container(
                                      width: 1.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                            color: Colors.grey,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                    ),
              
                                    SizedBox(width: 30.0),
              
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            'Raised',
                                            // list[index].trailing,
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          Text(
                                            demoList[index].raised!,
                                            // list[index].trailing,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // buildManualProgressBar(demoList[index].progressValue!, 20.0,demoList[index].progressValue!),
                      Container(
                        height: 20.0,
                        child: Row(
                          children: [
                            Expanded(
                              //flex: 1,
                              // padding: const EdgeInsets.only(right: 30),
                              child: LinearProgressIndicator(
                                value: demoList[index].progressValue!,
                                backgroundColor: Colors.grey[300],
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.blue),
                              ),
                            ),
                            Text(
                              "${(demoList[index].progressValue! * 100).toInt()} %",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Container buildManualProgressBar(double progress, double height, String percentageText) {
//   return
// }

class DemoModel {
  String? imagePath;
  String? titleHd;
  String? goals;
  String? raised;
  double? progressValue;
  Color bgColor;

  DemoModel(
      this.imagePath, this.titleHd, this.goals, this.raised, this.progressValue,
      {this.bgColor = Colors.white});
}

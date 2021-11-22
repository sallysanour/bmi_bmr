import 'package:flutter/material.dart';
import 'package:healthy/bmi_result.dart';
import 'package:height_slider/height_slider.dart';

class bmi extends StatefulWidget {

  @override
  _bmiState createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  int h = 160;
  int age = 18;
  int weight = 50;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(
              left: 10.0
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff53e88b).withOpacity(0.10000000149011612),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context);
              },
              color: Color.fromRGBO(47, 207, 107, 1),
            ),
          ),
        ),
        title: Row(
          children: [
            Text('BMI ',
            style: TextStyle(
              color: Color.fromRGBO(47, 207, 107, 1),
              fontSize: 30.0,
              fontFamily: 'Roboto',
            ),
            ),
            Text('Calculator',
              style: TextStyle(
                color: Color.fromRGBO(0,0,0,1),
                fontSize: 30.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
      body:Container(
        color: Colors.white,
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 190.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        color: ismale == true ? Color.fromRGBO(47, 207, 107, 1) : Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/male.png'),
                              radius: 30.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Male',
                              style: TextStyle(
                                  color: ismale == true ? Colors.white : Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        ismale = true;
                      });
                    },
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 190.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        color: ismale == false ? Color.fromRGBO(47, 207, 107, 1) : Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/female.png'),
                              radius: 30.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('Female',
                              style: TextStyle(
                                  color: ismale == false ? Colors.white : Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        ismale = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 160.0,
                        height: 180.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2fcf6b),
                                ),
                              ),
                              SizedBox(height: 7.0,),
                              Text(
                                '${age}',
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 7.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age-',
                                    mini: true,
                                    backgroundColor: Color(0xff2fcf6b),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: ()
                                    {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age+',
                                    mini: true,
                                    backgroundColor: Color(0xff2fcf6b),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 160.0,
                        height: 180.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2fcf6b),
                                    ),
                                  ),
                                  Text('kg',
                                    style: TextStyle(
                                      color: Color(0xff383838),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7.0,),
                              Text(
                                '${weight}',
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 7.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight-',
                                    mini: true,
                                    backgroundColor: Color(0xff2fcf6b),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: ()
                                    {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight+',
                                    mini: true,
                                    backgroundColor: Color(0xff2fcf6b),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 220.0,
                    height: 380.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 246, 246, 1),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'HEIGHT',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2fcf6b),
                                ),
                              ),
                              Text('CM',
                                style: TextStyle(
                                  color: Color(0xff383838),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          HeightSlider(
                            primaryColor: Color.fromRGBO(83, 232, 139, 1),
                            accentColor: Color.fromRGBO(83, 232, 139, 1),
                            numberLineColor: Color.fromRGBO(83, 232, 139, 1),
                            currentHeightTextColor: Color.fromRGBO(83, 232, 139, 1),
                            maxHeight: 200,
                            personImagePath: ismale ? 'images/boy.svg' : 'images/girl.svg',
                            minHeight: 130,
                            height: h,
                            onChange: (val) => setState(() => h = val),
                            sliderCircleColor: Color.fromRGBO(83, 232, 139, 1),
                            unit: 'CM',
                          ),
                        ],
                      ),
                    ),
                  ),
                        ],
                      ),
                    ),
            SizedBox(
              height: 13.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(47, 207, 107, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white30.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        age = 18;
                        weight = 50;
                        h = 150;
                        ismale = true;
                      });
                    },
                    child: Text('Clear',
                      style: TextStyle(
                        color: Color.fromRGBO(47, 207, 107, 1),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  height: 60.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(47, 207, 107, 1),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white30.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: (){
                      double r = (weight / h / h ) * 10000;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => result(
                            r: r,
                          ),
                        ),
                      );
                    },
                    child: Text('Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
                ],
              ),
            ),
    );
  }
}
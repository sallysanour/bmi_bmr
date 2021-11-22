import 'package:flutter/material.dart';
import 'package:healthy/bmi_calc.dart';
import 'package:healthy/bmr_calc.dart';
import 'package:page_transition/page_transition.dart';

class homescreen extends StatefulWidget {

  bool isbmi;
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  bool isbmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('What do you want to ',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 23.0,
                fontFamily: 'Roboto',
              ),
            ),
            Text('calculate',
              style: TextStyle(
                color: Color.fromRGBO(47, 207, 107, 1),
                fontSize: 23.0,
                fontFamily: 'Roboto',
              ),
            ),
            Text('?',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 23.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top:20.0,
        ),
        child: Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isbmi = true;
                      });
                    },
                    child: Container(
                      width: 190.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: isbmi == true ? Color.fromRGBO(47, 207, 107, 1) : Color.fromRGBO(246, 246, 246, 1),
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
                        child: Center(
                          child: Text('BMI',
                            style: TextStyle(
                                color: isbmi == true ? Colors.white : Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 40.0
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isbmi = false;
                      });
                    },
                    child: Container(
                      width: 190.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: isbmi == false ? Color.fromRGBO(47, 207, 107, 1) : Color.fromRGBO(246, 246, 246, 1),
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
                        child: Center(
                          child: Text('BMR',
                            style: TextStyle(
                                color: isbmi == false ? Colors.white : Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 40.0
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
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
                      if(isbmi == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => bmi(),
                          ),
                        );
                      }
                      else if(isbmi == false)
                        {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => bmr(),
                        ),
                        );
                        }
                    },
                    child: Text('Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

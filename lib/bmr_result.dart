import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmr_result extends StatelessWidget {
  final double bmr;

  bmr_result({
    @required this.bmr,
  });

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
            Text('BMR ',
              style: TextStyle(
                color: Color.fromRGBO(47, 207, 107, 1),
                fontSize: 30.0,
                fontFamily: 'Roboto',
              ),
            ),
            Text('Result',
              style: TextStyle(
                color: Color.fromRGBO(0,0,0,1),
                fontSize: 30.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 15.0,
        ),
        child: Container(
          color: Colors.white,
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Your BMR is',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0,0,0,1),
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
              Text('${bmr.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Color.fromRGBO(47, 207, 107, 1),
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
              Text('The BMR is your basal metabolic rate,\nand confirms what kind of metabolism you have.\nOnce you know your BMR, you can calculate\nyour suggested intake of calories.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff686868),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
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
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Daily calorie needs based on activity level',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(47, 207, 107, 1),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('sedentary/ little or no exercise --> ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0
                              ),
                            ),
                            Text('${(bmr*1.2).round()}',
                              style: TextStyle(
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text('light exercise/sports 1-3 days/week --> ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0
                              ),
                            ),
                            Text('${(bmr*1.375).round()}',
                              style: TextStyle(
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text('moderate exercise/sports 3-5 days/week --> ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0
                              ),
                            ),
                            Text('${(bmr*1.55).round()}',
                              style: TextStyle(
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text('hard exercise/sports 6-7 days a week --> ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0
                              ),
                            ),
                            Text('${(bmr*1.725).round()}',
                              style: TextStyle(
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text('very hard exercise/sports & physical job --> ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0
                              ),
                            ),
                            Text('${(bmr*1.9).round()}',
                              style: TextStyle(
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0
                              ),
                            ),
                          ],
                        ),
                      ],
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

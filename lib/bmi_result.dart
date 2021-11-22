import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final double r;

  result({
    @required this.r,
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
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 15.0,
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Your BMI is',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0,0,0,1),
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
              Text('${r.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Color.fromRGBO(47, 207, 107, 1),
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
              Text('BMI is a person’s weight in kilograms divided by the \n square of height in meters, A high BMI can \n indicate high body fatness, and a low BMI \n can indicate too low body fatness',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff686868),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

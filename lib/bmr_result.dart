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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {

  //controller property to retrieve data from user
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double height_value=0;
  double weight_value=0;
  double result=0;


  //main function
  void calculate(){
    height_value=double.parse(height.text);
    weight_value=double.parse(weight.text);
    result=weight_value/(height_value*height_value)*10000;
    print(result);
  //set state will update the ui
    setState(() {
      result=result;
    });
  //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background colour
      backgroundColor:Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          TextField(

            controller:weight,

          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.deepOrange,
              label: Text('weight',style: TextStyle(color: Colors.black),),

            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)
            )
          ),
          ),
          SizedBox(height: 40,),
          TextField(

            controller: height,

            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green,
                label: Text('Height',style: TextStyle(color: Colors.black),),

                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(100),

                )
            ),
          ),

          SizedBox(height: 40,),

          //for ading line break


          TextButton(
              onPressed: () {
                setState(() {

                  calculate();

                });

          //    calling of the main function
          },
              child: Text('Calculate', style: TextStyle(color: Colors.black,backgroundColor: Colors.lightGreenAccent),
          )
          ),

          Text(result==null? 'result':"${result.toStringAsFixed(2)}",textAlign: TextAlign.center,),

        ],
      ),



      appBar: AppBar(
        title: Text('Bmi Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(fontSize: 50,color: Colors.white,),
      ),
    );
  }
}

import 'package:bmi_cal/result_page.dart';
import 'package:flutter/material.dart';
import 'calcualter_brain.dart';
int height= 70;
int weight=60;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BMI Calculater"),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                        "Height",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 26
                          ),
                        ),
                        Text(
                          "inch",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 6,
                        max: 120,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.black26,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        }
                        ),

                  ],
                ),
              ),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),

              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 26
                          ),
                        ),
                        Text(
                          "kg",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: weight.toDouble(),
                        min: 1,
                        max: 190,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.black26,
                        onChanged: (double newValue){
                          setState(() {
                            weight = newValue.round();
                          });
                        }
                    ),

                  ],
                ),
              ),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector
              (onTap: ()
              {
                CalculaterBrain calc= CalculaterBrain(height: height, weight: weight);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => resultPage(
                        bmiResult: calc.CalculateBMI() ,
                      resultText: calc.getResult(),
                      intrepretation: calc.getInterpreation(),
                    ),

                    )
                );

              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





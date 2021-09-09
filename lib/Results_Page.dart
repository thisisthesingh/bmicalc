import 'Bottom_Button.dart';
import 'Reuseable_Card.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: KtitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText,
                    style: KresultsTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    style: KBMItextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    style: KBMIresultBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

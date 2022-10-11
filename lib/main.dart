import 'package:flutter/material.dart';
import 'input_page.dart';
void main()
{
  runApp(BMICal());

}
class BMICal extends StatelessWidget {
  const BMICal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black
      ),
      home: InputPage(),
    );
  }
}



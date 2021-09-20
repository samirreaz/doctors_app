import 'package:flutter/material.dart';

import '../../constants.dart';
import 'splash_components/splash_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to Tokoto, Let’s shop!", "image": "assets/images/d2.png"},
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/d1.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/d3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: _size.height * .6,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                        image: splashData[index]['image'] ?? '',
                        text: splashData[index]['text'] ?? '',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      child: Container(
                        width: _size.width,
                        color: Colors.white,
                        height: _size.height * 0.1,
                        child: Column(
                          children: [
                            Spacer(),
                            Row(
                              children: List.generate(
                                splashData.length,
                                (index) => buildDot(index: index),
                              ),
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            //Spacer(flex: 3)
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Spacer(),
                      Text(
                        'WELCOME',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      Text('Lorem Ipsum is simply dummy text of the printing'),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          //icon: Icon(Icons.person),
                          hintText: 'User Name',
                          //labelText: 'User Name',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          //labelText: 'Enter Password',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                      SizedBox(height: kDefaultPadding * 2),
                      SizedBox(
                        height: 50,
                        width: _size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: () {},
                          child: Text('LOGIN'),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black38)),
    );
  }
}

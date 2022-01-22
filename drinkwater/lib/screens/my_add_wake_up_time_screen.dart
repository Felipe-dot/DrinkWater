import 'package:flutter/material.dart';
import '../components/my_number_picker.dart';

import '../constant.dart';

class MyAddWakeUpTimeScreen extends StatelessWidget {
  const MyAddWakeUpTimeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.center,
              stops: [1, 1.2],
              colors: [kLightBlue4, kWhite],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/logo.png"),
                  height: 89,
                  width: 145,
                ),
                const Text(
                  "Qual sua hora de acordar??",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 34,
                    fontWeight: FontWeight.normal,
                    color: kDark2,
                  ),
                ),
                const Text(
                  "para que não enviemos seus lembretes em uma hora inoportuna é importante saber sua hora de acordar",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: kGray,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/despertador.png"),
                      width: 247,
                      height: 208,
                    ),
                    const MyNumberPicker(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Voltar",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kRedAccent,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/myAddWakeUpTimeScreen');
                      },
                      child: const Text(
                        "Proximo",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kWhite,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(180, 56),
                        primary: kMainColor,
                        elevation: 2,
                        padding: const EdgeInsets.all(10),
                        enableFeedback: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
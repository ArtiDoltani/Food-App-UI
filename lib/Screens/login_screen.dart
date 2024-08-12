import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp_ui/Screens/home_screen.dart';
import 'package:foodapp_ui/decoration/app_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: Colors.black,
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    "images/sp.jpg",
                  ),
                ),
              ),
            ),
            Text(
              "Food Bank",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Text("Special & Delicious Food"),

            //   const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 20),
              child: AppButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                buttontext: "Log In",
                color: const Color.fromARGB(255, 245, 104, 94),
                txtcolor: Colors.white,
              ),
            ),
            AppButton(
              onPressed: () {},
              buttontext: "Sign Up",
              color: const Color.fromARGB(255, 255, 255, 255),
              txtcolor: Colors.black,
            ),
            const SizedBox(height: 150),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 360,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 104, 94),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(100))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "15%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          "Discount",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const Text("From Our Store"),
                      ],
                    ),
                  ),
                ),
                
                const Positioned(
                  left: 180,
                  bottom: 20,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage:  AssetImage(
                      "images/1.jpg",
                    ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

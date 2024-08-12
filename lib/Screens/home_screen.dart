import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp_ui/Models/fooditems.dart';
import 'package:foodapp_ui/Screens/food_list.dart';
import 'package:foodapp_ui/decoration/button.dart';
import 'package:foodapp_ui/decoration/icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/3.jpg"),
                      fit: BoxFit.fitWidth,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.darken)),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // AppIconButton(
                      //     icon: Icon(Icons.arrow_back),
                      //     onPressed: () {
                      //       Navigator.pop(context);
                      //     },
                      //     color: Colors.white),
                      AppIconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FoodList()));
                          },
                          color: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Different",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    "Kinds of Food",
                    style: Theme.of(context).textTheme.headlineLarge,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // Food Category
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 17.0, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Food Category",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              Container(
                                width: 170,
                                height: 1,
                                color: Colors.white30,
                              )
                            ],
                          ),
                          // List of Items

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          food_list[index].image,
                                                            
                                          width: 100,
                                          //  height: 90,
                                        )),
                                                            
                                    Text(
                                      "Food Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                                            
                                    Text(
                                      "\$ 300.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                                            
                                    // Button
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add Cart",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      style: addbutton,
                                    )
                                  ],
                                ),
                            
                                // 2nd
                            
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          food_list[index].image,
                                                            
                                          width: 100,
                                          //  height: 90,
                                        )),
                                                            
                                    Text(
                                      "Food Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                                            
                                    Text(
                                      "\$ 300.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                                            
                                    // Button
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add Cart",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      style: addbutton,
                                    )
                                  ],
                                ),
                                // 3rd
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          food_list[index].image,
                                                            
                                          width: 100,
                                          //  height: 90,
                                        )),
                                                            
                                    Text(
                                      "Food Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                                            
                                    Text(
                                      "\$ 300.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                                            
                                    // Button
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add Cart",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      style: addbutton,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
           
          ],
        ),
      ),
    );
  }
}

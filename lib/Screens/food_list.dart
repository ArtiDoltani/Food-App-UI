import 'package:flutter/material.dart';
import 'package:foodapp_ui/Models/fooditems.dart';
import 'package:foodapp_ui/decoration/button.dart';
import 'package:foodapp_ui/decoration/icon_button.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white30),
                  AppIconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                      color: Colors.white30)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                        fillColor: Colors.white,
                        hintText: "Search From Here",
                        hintStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40)))),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  food_list[index].image,

                                  width: 120,
                                  //  height: 90,
                                )),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Food Name",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                  textAlign: TextAlign.justify,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 300.00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: addbutton,
                                      child: Text(
                                        "Add Cart",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        thickness: 3,
                      );
                    },
                    itemCount: food_list.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}

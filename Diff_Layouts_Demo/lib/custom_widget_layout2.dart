import 'package:flutter/material.dart';
class custom_widget_layout2 extends StatelessWidget {
  const custom_widget_layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (
            Column(
              children: [
                  Expanded(
                    child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child:(
                                    CustomW1(1,Colors.pink)
                                ),
                              ),
                            ),
                          Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: (
                                          Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.green)
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.blue)
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.pinkAccent)
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.cyanAccent)
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.purple)
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.green)
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.brown)
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.blue)
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child:(
                                                            CustomW1(1,Colors.red)
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                      ),
                                    ),
                                    Expanded(
                                      child: (
                                          Container(
                                            child:(
                                                CustomW1(2,Colors.purple)
                                            ),
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                      ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                      child:(
                                          CustomW1(1,Colors.blue)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child:(
                                      CustomW1(1,Colors.green)
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child:(
                                      CustomW1(1,Colors.yellowAccent)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Row(
                       children: [
                          Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    child:(
                                                       CustomW1(1,Colors.red)
                                                    ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.blue)
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.yellowAccent)
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.green)
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.grey)
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.red)
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child:(
                                                CustomW1(1,Colors.deepPurple)
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.grey)
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child:(
                                                      CustomW1(1,Colors.red)
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child:(
                                                CustomW1(1,Colors.deepPurple)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),

                          Expanded(
                              child: Container(
                                  child:(
                                       CustomW1(1,Colors.brown)
                                  ),
                              ),
                          ),
                        ],
                    ),
                  )
                ],
            )
        ),
    );
  }

  Expanded CustomW1(flex,color) {
    return Expanded(
        flex : flex,
                      child: Container(
                                color: color,
                              ),
                        );
    }
  }

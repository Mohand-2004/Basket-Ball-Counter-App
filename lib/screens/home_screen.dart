import 'package:basket_ball_counter/widgets/incrementer_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  int teamAscore = 0;
  int teamBscore = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 246, 163, 75),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffe3612d),
        title: Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height*0.08,
      ),
      // main circular container
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          image:const DecorationImage(
            image: AssetImage('images/Untitled-1.png')
          ),
          borderRadius: BorderRadius.circular(60.r)
        ),
        // app main column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // basket ball image
            Expanded(
              flex: 27,
              child: Padding(
                padding: const EdgeInsets.all(11),
                child: Image.asset('images/bb.jpg',),
              ),
            ),

            // team scores and buttons row
            Expanded(
              flex: 58,
              child: SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      // team a score control column
                      child: SizedBox(
                        child: Column(
                          children: [
                            // team A text
                            const Expanded(
                              flex: 10,
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Team A',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ),
                            
                            // team A score text
                            Expanded(
                              flex: 45,
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '$teamAscore',
                                    style: const TextStyle(
                                      fontFamily: 'Impact',
                                      color: Color.fromARGB(119, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              )
                            ),

                            // team A control buttons
                            Expanded(
                              flex: 45,
                              child: Column(
                                children: [
                                  // increment team A score button
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: IncrementerButton(
                                        onPressed: (){
                                          setState((){
                                            teamAscore++;
                                          });
                                        },
                                        incrementValue: 1
                                      ),
                                    )
                                  ),

                                  // space between
                                  SizedBox(height: 5.h,),

                                  // add 2 to team A score button
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: IncrementerButton(
                                        onPressed: (){
                                          setState((){
                                            teamAscore+=2;
                                          });
                                        },
                                        incrementValue: 2
                                      ),
                                    )
                                  ),

                                  // space between
                                  SizedBox(height: 5.h,),

                                  // add 3 to team A score button
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: IncrementerButton(
                                        onPressed: (){
                                          setState((){
                                            teamAscore+=3;
                                          });
                                        },
                                        incrementValue: 3
                                      ),
                                    )
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                      )
                    ),

                    // vertical divider
                    SizedBox(
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2.w,
                        indent: 35.h,
                        endIndent: 10.h,
                        width: 50
                      )
                    ),

                    // team b score control column
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          children: [
                            // team B text
                            const Expanded(
                              flex: 10,
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Team B',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ),

                            // team B score text
                            Expanded(
                              flex: 45,
                              child: SizedBox(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '$teamBscore',
                                    style: const TextStyle(
                                      fontFamily: 'Impact',
                                      color: Color.fromARGB(119, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              )
                            ),

                            // increment team B score button
                            Expanded(
                              flex: 45,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: IncrementerButton(
                                        onPressed: (){
                                          setState((){
                                            teamBscore++;
                                          });
                                        },
                                        incrementValue: 1
                                      ),
                                    )
                                  ),

                                  // space between
                                  SizedBox(height: 5.h,),

                                  // add 2 to team B score button
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: IncrementerButton(
                                        onPressed: (){
                                          setState((){
                                            teamBscore+=2;
                                          });
                                        },
                                        incrementValue: 2
                                      ),
                                    )
                                  ),

                                  // space between
                                  SizedBox(height: 5.h,),

                                  // add 3 to team B score button
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: IncrementerButton(
                                        onPressed: (){
                                          setState((){
                                            teamBscore+=3;
                                          });
                                        },
                                        incrementValue: 3
                                      ),
                                    )
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              )
            ),

            // reset teams scores button
            Expanded(
              flex: 15,
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextButton(
                    onPressed:(){
                      setState((){
                        teamAscore = 0;
                        teamBscore = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffe3612d),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child:const Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}
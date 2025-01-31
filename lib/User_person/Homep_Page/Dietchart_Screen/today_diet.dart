import 'package:flutter/material.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import 'Orderfood_screen.dart';

class TodaysDiet extends StatefulWidget {
  const TodaysDiet({super.key});

  @override
  State<TodaysDiet> createState() => _TodaysDietState();
}

class _TodaysDietState extends State<TodaysDiet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height, // Set the desired height for your container
        child: ListView.builder(
            itemCount: DietList.length,
            itemBuilder: (context,int index){
              return Card(
                color: Colors
                    .transparent,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:  Image.asset(
                            "assets/images/" + DietList[index]['image'],
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 18,),
                        Expanded(
                          flex:2,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                          text:
                                          DietList[index]['title'],
                                          fw: FontWeight.w500,
                                          size: 2.2*SizeConfigure.textMultiplier!,
                                          color: kTitleColor
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/Vectorline.png'),
                                          SizedBox(width: 5,),
                                          AppText(
                                              text:
                                              DietList[index]['time'],
                                              size: 1.6*SizeConfigure.textMultiplier!,
                                              color:kMainColor
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 1.0 *SizeConfigure.heightMultiplier! ,),
                                      AppText(
                                          text:
                                          DietList[index]['subtitle'],
                                          size: 1.7*SizeConfigure.textMultiplier!,
                                          fw: FontWeight.normal,
                                          color: Colors.grey
                                      ),
                                      AppText(
                                          text:
                                          DietList[index]['secondtitle'],
                                          size: 1.7*SizeConfigure.textMultiplier!,
                                          fw: FontWeight.normal,
                                          color: Colors.grey
                                      ),
                                      AppText(
                                          text:
                                          DietList[index]['thirdtitle'],
                                          size: 1.7*SizeConfigure.textMultiplier!,
                                          fw: FontWeight.normal,
                                          color:Colors.grey
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.5*SizeConfigure.heightMultiplier!,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {

                              },
                              child: Container(
                                  height: 5.0*SizeConfigure.heightMultiplier!,
                                  width: 40.0*SizeConfigure.widthMultiplier!,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kMainColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: AppText(
                                        text: "Add to cart",
                                        color: kTitleColor,
                                        size: 1.9*SizeConfigure.textMultiplier!,
                                        fw: FontWeight.w500,
                                      )))),
                          SizedBox(width: 4.0*SizeConfigure.widthMultiplier!,),
                          InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OrderFoodScreen()));
                              },
                              child: Container(
                                  height: 5.0*SizeConfigure.textMultiplier!,
                                  width: 20.5*SizeConfigure.textMultiplier!,
                                  decoration: BoxDecoration(
                                      color: kGreyTextColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: AppText(
                                        text: "Order Now",
                                        color: kMainColor,
                                        size: 1.9*SizeConfigure.textMultiplier!,
                                        fw: FontWeight.w500,
                                      )))),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
        ),
      ) ;

  }
}

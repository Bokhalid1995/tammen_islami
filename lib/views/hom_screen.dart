
import 'package:flutter/material.dart';
import 'package:tammen_islami/core/constants.dart';
import 'package:tammen_islami/core/utils/size_config.dart';
import 'package:tammen_islami/core/widgets/more_details.dart';
import 'package:tammen_islami/core/widgets/services_details.dart';
import 'package:tammen_islami/core/widgets/vertical_panner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var moreServicesDetailsItems = [
      MoreServicesDetails("ابراهيم مالك","مستشفي","الخرطوم - بري - شارع بري بالنص", "assets/images/insurance/ibrahim.jpg"),
      MoreServicesDetails("رويال كير","مستشفي","الخرطوم 2 - جوار مطاعم برشلونة", "assets/images/insurance/royal.jpg"),
      MoreServicesDetails("الترا لاب","معمل","الخرطوم - العربي - قرب شارع الحوادث", "assets/images/insurance/altra.jpg"),
      MoreServicesDetails("مستشفي الأطباء","مستشفي","الخرطوم - العمارات - قرب لفه الجريف - شارع المطار", "assets/images/insurance/zaytona.jpg"),
      MoreServicesDetails("الزيتونة","مستشفي","الخرطوم - العربي - قرب شارع الحوادث", "assets/images/insurance/zaytona.jpg"),
      MoreServicesDetails("فضيل","مستشفي","الخرطوم - العربي - قرب شارع الحوادث", "assets/images/insurance/fodil.jpg"),

    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),

        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20 ,bottom: 10),
              decoration: const BoxDecoration(
                color: PColor,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),

              ),
              width: SizeConfig.screenWidth!,
              child: Image.asset("assets/images/insurance/pic (2).png" ,width: SizeConfig.screenWidth! / 2, height: 150,),
            ),
            Container(
              height: SizeConfig.screenheight! / 1.51,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),

              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children:const [
                         Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text('الأقسام :'
                            ,textAlign: TextAlign.right,textDirection: TextDirection.rtl,style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          GroceryFeaturedCard(
                            groceryFeaturedItems[0],
                            SColor,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GroceryFeaturedCard(
                            groceryFeaturedItems[1],
                            PColor

                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GroceryFeaturedCard(
                            groceryFeaturedItems[2],
                              const Color(0xff7506af)


                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GroceryFeaturedCard(
                            groceryFeaturedItems[3],
                              const Color(0xff068e93)

                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),

                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                         Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text('  الأكثر رواجا :'
                            ,textAlign: TextAlign.right,textDirection: TextDirection.rtl,style: TextStyle(
                              fontSize: 15,
                            ),

                          ),
                        ),

                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                MoreDetails(
                                  moreServicesDetailsItems[0],
                                  press: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServicesBodyDetails(moreServicesDetailsItems[0]),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 20),
                                MoreDetails(
                                  moreServicesDetailsItems[1],
                                  press: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServicesBodyDetails(moreServicesDetailsItems[1]),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                MoreDetails(
                                  moreServicesDetailsItems[2],
                                  press: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServicesBodyDetails(moreServicesDetailsItems[3]),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 20),
                                MoreDetails(
                                  moreServicesDetailsItems[1],
                                  press: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServicesBodyDetails(moreServicesDetailsItems[1]),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                MoreDetails(
                                  moreServicesDetailsItems[4],
                                  press: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServicesBodyDetails(moreServicesDetailsItems[4]),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 20),
                                MoreDetails(
                                  moreServicesDetailsItems[5],
                                  press: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServicesBodyDetails(moreServicesDetailsItems[5]),
                                      ),
                                    );
                                  },
                                ),

                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

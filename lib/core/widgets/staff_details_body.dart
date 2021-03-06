
import 'package:tammen_islami/core/constants.dart';
import 'package:tammen_islami/core/utils/size_config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class StaffDetailsBody extends StatefulWidget {
   const StaffDetailsBody(this.name, this.category, this.details, this.phone, this.imagePath, {Key? key}  ) : super(key: key);

  final String name;
  final String category;
  final String details;
  final String phone;
  final String imagePath;

  @override
  State<StaffDetailsBody> createState() => _StaffDetailsBodyState();
}

class _StaffDetailsBodyState extends State<StaffDetailsBody> {
  bool toggleShow = false;
  double raduis = 17;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      toggleShow = !toggleShow;
                    });
                  },
                  child: CircleAvatar(

                    backgroundImage: AssetImage(widget.imagePath),
                    radius: toggleShow?27 : 25,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Visibility(
                  visible: toggleShow,
                  child: GestureDetector(
                    onTap: (){
                      // ignore: deprecated_member_use
                      launch("tel://${widget.phone}");
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage('assets/images/call.png'),
                      radius:toggleShow?20 : 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Visibility(
                  visible: toggleShow,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/info.png'),
                    radius: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all( toggleShow? 3 : 0),
                  duration: const Duration(seconds: 0),
                  curve: Curves.bounceInOut,
                  child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                       // border: Border.all(color: PColor,width: 0.8),

                        color: toggleShow?const Color(0xFF043B65).withOpacity(0.25) : const Color(0xffF8A44C).withOpacity(0.10) ,
                        borderRadius: BorderRadius.circular(10),
                    ),
                    width: SizeConfig.screenWidth! / 1.35,
                    height: SizeConfig.screenheight! / 6.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style:const TextStyle(
                            color: PColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                       const SizedBox(height: 10,),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            widget.category,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15,),
                        Text(
                          widget.details,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app_ui/app_style.dart';
import 'package:news_app_ui/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kLighterWhite,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),

          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius,
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7xjdn-kjXrJ-50wDnggem2K0gjNzijhyPMSWidzKWhZZoIWrqlFbM6FR5xCtJZU2mqXY&usqp=CAU',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Elly Byers',
                                  style: kPoppinsBold.copyWith(
                                    color: kDarkBlue,
                                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                  ),
                                ),
                                Text('Author & Writer',
                                    style: kPoppinsRegular.copyWith(
                                      color: kDarkBlue,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ))
                              ]),
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 42,
                              maxWidth: SizeConfig.blockSizeHorizontal! * 30,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  kBorderRadius,
                                ),
                                color: kBlue),
                            child: Center(
                              child: Text('Following',
                                  style: kPoppinsMedium.copyWith(
                                    color: kWhite,
                                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                  )),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Text(
                      'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
                      style: kPoppinsMedium.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      )),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal! * 3,
                        vertical: SizeConfig.blockSizeVertical! * 3.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kDarkBlue,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              '54.21k',
                              style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            Text(
                              'Followers',
                              style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3),
                            )
                          ],
                        )),
                        Container(
                          width: 1,
                          height: SizeConfig.blockSizeVertical! * 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: kLighterBlue,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              '2.11k',
                              style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            Text(
                              'Posts',
                              style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3),
                            )
                          ],
                        )),
                        Container(
                          width: 1,
                          height: SizeConfig.blockSizeVertical! * 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: kLighterBlue,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              '36.40k',
                              style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            Text(
                              'Followers',
                              style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Elly\'s Post',
                        style: kPoppinsBold.copyWith(
                            color: kDarkBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      ),
                      Text(
                        'View All',
                        style: kPoppinsMedium.copyWith(
                            color: kBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.blockSizeVertical! * 2.5),
                            child: Row(
                              children: [
                                Container(
                                    height: 100,
                                    width: 100,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: kWhite,
                                      borderRadius:
                                          BorderRadius.circular(kBorderRadius),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 24,
                                            spreadRadius: 0,
                                            offset: const Offset(0, 3),
                                            color: kDarkBlue.withOpacity(0.051)),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(kBorderRadius),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1609601540898-52ca92508901?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fG1hbGRpdmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                SizedBox(
                                  width: SizeConfig.blockSizeVertical! * 2.5,
                                ),
                                Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'News : Politics',
                                          style: kPoppinsRegular.copyWith(
                                            color: kDarkBlue,
                                            fontSize:
                                                SizeConfig.blockSizeHorizontal! * 2.5,
                                          ),
                                        ),
                                        SizedBox(
                                          height: SizeConfig.blockSizeVertical! * 1,
                                        ),
                                        Text(
                                          'Iran\'s Raging Protest Fifth Iranian paramiliatry me...',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: kPoppinsBold.copyWith(
                                            color: kDarkBlue,
                                            fontSize:
                                            SizeConfig.blockSizeHorizontal! * 2.5,
                                          ),
                                        ),
                                        SizedBox(
                                          height: SizeConfig.blockSizeVertical! * 1,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset('assets/calendar.svg',
                                                  color: kGrey,
                                                ),
                                                SizedBox(
                                                  width: SizeConfig.blockSizeHorizontal! * 1.5,
                                                ),
                                                Text(
                                                  '16th May',
                                                  style: kPoppinsRegular.copyWith(
                                                    color: kGrey,
                                                    fontSize:
                                                    SizeConfig.blockSizeHorizontal! * 3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset('assets/clock.svg',
                                                  color: kGrey,
                                                ),
                                                SizedBox(
                                                  width: SizeConfig.blockSizeHorizontal! * 1.5,
                                                ),
                                                Text(
                                                  '9:32 PM',
                                                  maxLines: 2,
                                                  style: kPoppinsRegular.copyWith(
                                                    color: kGrey,
                                                    fontSize:
                                                    SizeConfig.blockSizeHorizontal! * 3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                  ],
                                )
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Popular From Elly',
                        style: kPoppinsBold.copyWith(
                            color: kDarkBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  SizedBox(
                    height: 143,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return Container(
                            height: 143,
                            width: 248,
                            margin: EdgeInsets.only(
                              right: SizeConfig.blockSizeHorizontal!*2.5,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              child: Image.network(  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbGRpdmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                              fit: BoxFit.cover,
                              ),
                            ),

                          );
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}

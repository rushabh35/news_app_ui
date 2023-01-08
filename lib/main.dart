

import 'package:flutter/material.dart';
import 'app_style.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset(
                        'assets/home.svg',
                        height: 20,
                        width: 20,
                      )
                    : SvgPicture.asset(
                        'assets/home_unselected.svg',
                        height: 20,
                        width: 20,
                      ),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset(
                        'assets/bookmark_selected.svg',
                        height: 20,
                        width: 20,
                      )
                    : SvgPicture.asset(
                        'assets/bookmark_unselected.svg',
                        height: 20,
                        width: 20,
                      ),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset(
                  'assets/notification_selected.svg',
                  height: 20,
                  width: 20,
                )
                    : SvgPicture.asset(
                  'assets/notification_unselected.svg',
                  height: 20,
                  width: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? SvgPicture.asset(
                  'assets/profile_selected.svg',
                  height: 20,
                  width: 20,
                )
                    : SvgPicture.asset(
                  'assets/profile_unselected.svg',
                  height: 20,
                  width: 20,
                ),
                label: ''),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Row(
                children: [
                  Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: kLightBlue,
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://www.getillustrations.com/photos/pack/3d-avatar-male_lg.png',
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Back!',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          )),
                      Text('Monday , 3rd October',
                          style: kPoppinsRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kGrey,
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkBlue.withOpacity(0.051),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                            style: kPoppinsRegular.copyWith(
                              color: kBlue,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                hintText: 'Search for article...',
                                border: kBorder,
                                errorBorder: kBorder,
                                focusedBorder: kBorder,
                                focusedErrorBorder: kBorder,
                                hintStyle: kPoppinsRegular.copyWith(
                                  color: kLightGrey,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                )))),
                    Container(
                        decoration: BoxDecoration(
                            color: kBlue,
                            borderRadius: BorderRadius.circular(kBorderRadius)),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search))),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 14,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 38),
                        child: Text(
                          '#Health',
                          style: kPoppinsRegular.copyWith(
                            color: kGrey,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        ));
                  }),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 304,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(right: 20.0),
                      height: 304,
                      width: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: kDarkBlue.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 164,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/675172642/photo/pura-ulun-danu-bratan-temple-in-bali.jpg?b=1&s=170667a&w=0&k=20&c=i6eVZIrC53B4jl-I4p3YIn9ZRViyVoMbRdp-NznLDUE='),
                                )),
                          ),
                          const SizedBox(height: 18),
                          Flexible(
                            child: Text(
                              'Bali-Unique, unmatched.There is not other place like Bali in this world.',
                              style: kPoppinsBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 19,
                                    backgroundColor: kLightBlue,
                                    backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuabej-KB_M2RIiJ2gOpR7c_KbHu8NBLqrmg&usqp=CAU'),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sam Aziz Ahwam',
                                        style: kPoppinsSemiBold.copyWith(
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                      ),
                                      Text(
                                        'Sep 9, 2022',
                                        style: kPoppinsRegular.copyWith(
                                          color: kGrey,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 38,
                                width: 38,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  color: kLightWhite,
                                ),
                                child:
                                    SvgPicture.asset('assets/icons8-share.svg'),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Short For You',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                    )),
                Text('View All',
                    style: kPoppinsMedium.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ))
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 88,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(9),
                        margin: const EdgeInsets.only(right: 20.0),
                        width: 208,
                        height: 88,
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          boxShadow: [
                            BoxShadow(
                              color: kDarkBlue.withOpacity(0.051),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/west-nusa-tenggara/lombok/lombok1.jpg'),
                                  ),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            Flexible(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Top Trending Island in 2022',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsSemiBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/eye.svg',
                                      height:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                    SizedBox(width: 4),
                                    Text('40,999',
                                        style: kPoppinsMedium.copyWith(
                                          color: kGrey,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ))
                                  ],
                                )
                              ],
                            ))
                          ],
                        ));
                  }),
            )
          ]),
    );
  }
}

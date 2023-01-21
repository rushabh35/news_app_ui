import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app_ui/app_style.dart';
import 'package:news_app_ui/size_config.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite  ,
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 50,
            child: Stack(
              children: [
                const FullScreenSlider(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kLighterWhite),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPaddingHorizontal,
                      vertical: 60,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                color: kDarkBlue,
                              )),
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset('assets/back_arrow.svg'),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                color: kDarkBlue,
                              )),
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset(
                              'assets/bookmark_unselected.svg'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
          ),
          child: Text('Unravel Mysteries\nof the Maldives',
          style: kPoppinsBold.copyWith(
            color: kDarkBlue,
            fontSize: SizeConfig.blockSizeHorizontal!*7,
          )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
              vertical: 20,
            ),
            height: 54,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                kBorderRadius
              ),
              border: Border.all(color: kBorderColor),
            ),
            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage('https://cdn3d.iconscout.com/3d/premium/thumb/boy-avatar-6299533-5187865.png'),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal!*2.5,
                ),
                Text('Keanu Carpent May 17 • 8 min read',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kPoppinsRegular.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal!*3
                ),)
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text('Maldives, officially the Republic of Maldives, is an archipelagic state in South Asia, situated in the Indian Ocean. It lies southwest of Sri Lanka and India, about 750 kilometres (470 miles; 400 nautical miles) from the Asian continents mainland. The chain of 26 atolls stretches across the equator from Ihavandhippolhu Atoll in the north to Addu Atoll in the south.Comprising a territory spanning roughly 90,000 square kilometres (35,000 sq mi) including the sea, land area of all the islands comprises 298 square kilometres (115 sq mi), Maldives is one of the world"s most geographically dispersed sovereign states and the smallest Asian country as well as one of the smallest Muslim-majority countries by land area and, with around 557,751 inhabitants, the 2nd least populous country in Asia. Malé is the capital and the most populated city, traditionally called the "Kings Island" where the ancient royal dynasties ruled for its central location.[13] ',
              style: kPoppinsMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                color: kDarkBlue
              )),
          ),
          SizedBox(height: SizeConfig.blockSizeHorizontal!*5,)

        ],
      ),
    ));

  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1609601540898-52ca92508901?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fG1hbGRpdmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZGl2ZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbGRpdmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  final CarouselController _controller = CarouselController();
  int _current = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current:
                index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map((item) => Center(
                  child: Image.network(item,
                      fit: BoxFit.cover,
                      height: SizeConfig.blockSizeVertical! * 50,
                      width: double.infinity)))
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                          ),
                          child: SvgPicture.asset(
                              _current == entry.key
                                  ? 'assets/kite.svg'
                                  : 'assets/circle.svg',
                              height: 10,
                              width: 10),
                        ),
                      ))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}

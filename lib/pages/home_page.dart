import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:travel_app_v2/pages/destination_detail_page.dart';
import 'package:travel_app_v2/models/place.dart';
import 'package:travel_app_v2/widgets/hover_effect.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.of(context).size.width > 800) {
          return const WebHomePage();
        } else {
          return const MobileHomePage();
        }
      },
    );
  }
}

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MobileHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hai, Rafa!',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xffA8A8A7),
                      ),
                    ),
                    Icon(
                      Icons.supervised_user_circle_outlined,
                      size: 60,
                    ),
                  ],
                ),
                const Text(
                  'Mau Liburan Kemana, bos?',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 48,
                    height: 1.2,
                    color: Color(0xff1B4084),
                  ),
                ),
                const SizedBox(height: 30),
                TabBar(
                  controller: _tabController,
                  labelColor: const Color(0xff5FB4DB),
                  unselectedLabelColor: const Color(0xffA8A8A7),
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: UnderlineTabIndicator(
                    borderSide: const BorderSide(
                      width: 5.0,
                      color: Color(0xff5FB4DB),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    insets: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: -6,
                    ),
                  ),
                  tabs: const [
                    Text(
                      'Indonesia',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Jepang',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Amerika',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Afrika',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _PlaceListView(placeList: indonesiaPlaceList),
                      _PlaceListView(placeList: jepangPlaceList),
                      _PlaceListView(placeList: amerikaPlaceList),
                      _PlaceListView(placeList: afrikaPlaceList),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PlaceListView extends StatelessWidget {
  final List placeList;

  const _PlaceListView({required this.placeList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (contex, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return DestinationDetailPage(
                    destinationDetail: placeList[index],
                  );
                },
              ),
            );
          },
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffA8A8A7).withOpacity(0.2),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    placeList[index].image,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          placeList[index].city,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color(0xff1B4084),
                          ),
                        ),
                        Row(
                          children: [
                            const RatingStars(
                              value: 5,
                              starCount: 5,
                              starSize: 14,
                              maxValue: 5,
                              starSpacing: 6,
                              valueLabelVisibility: false,
                              valueLabelPadding: EdgeInsets.symmetric(
                                vertical: 1,
                                horizontal: 8,
                              ),
                              starOffColor: Color(0xffe7e8ea),
                              starColor: Colors.orange,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              placeList[index].rating,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Flexible(
                          child: Text(
                            placeList[index].cityDesc.length > 55
                                ? '${placeList[index].cityDesc.substring(0, 55)}...'
                                : placeList[index].cityDesc,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffA8A8A7),
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
      },
      separatorBuilder: (context, index) => const SizedBox(height: 14),
      itemCount: placeList.length,
    );
  }
}

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  List<Place> placeList = allPlaceList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 27, 120, 132),
                      Color(0xff1B4084),
                    ],
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlutterCarousel(
                    options: FlutterCarouselOptions(
                      height: 250,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayInterval: const Duration(seconds: 5),
                      showIndicator: false,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                    ),
                    items: placeList.map(
                      (place) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return DestinationDetailPage(
                                    destinationDetail: place,
                                  );
                                },
                              ),
                            );
                          },
                          child: HoverEffectWidget(
                            borderRadius: 20,
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(place.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        place.country,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        place.city,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 28,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hai Rafa!',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Mau Liburan Kemana, bos?',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _WebListView(
              placeList: indonesiaPlaceList,
              title: 'Indonesia',
            ),
            const SizedBox(height: 20),
            _WebListView(
              placeList: jepangPlaceList,
              title: 'Jepang',
            ),
            const SizedBox(height: 20),
            _WebListView(
              placeList: amerikaPlaceList,
              title: 'Amerika',
            ),
            const SizedBox(height: 20),
            _WebListView(
              placeList: afrikaPlaceList,
              title: 'Afrika',
            ),
          ],
        ),
      ),
    );
  }
}

class _WebListView extends StatelessWidget {
  const _WebListView({
    required this.placeList,
    required this.title,
  });

  final List<Place> placeList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff5FB4DB),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Color(0xff5FB4DB),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(height: 10),
          ScrollConfiguration(
            behavior: const MaterialScrollBehavior().copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            }),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2 - 20,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffA8A8A7).withOpacity(0.2),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              placeList[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 14,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                placeList[index].city,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: Color(0xff1B4084),
                                ),
                              ),
                              Row(
                                children: [
                                  const RatingStars(
                                    value: 5,
                                    starCount: 5,
                                    starSize: 16,
                                    maxValue: 5,
                                    starSpacing: 6,
                                    valueLabelVisibility: false,
                                    valueLabelPadding: EdgeInsets.symmetric(
                                      vertical: 1,
                                      horizontal: 8,
                                    ),
                                    starOffColor: Color(0xffe7e8ea),
                                    starColor: Colors.orange,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    placeList[index].rating,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.orange,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                placeList[index].cityDesc.length > 200
                                    ? '${placeList[index].cityDesc.substring(0, 200)}...'
                                    : placeList[index].cityDesc,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffA8A8A7),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) {
                                          return DestinationDetailPage(
                                            destinationDetail: placeList[index],
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: const Color(0xffDEF1FF),
                                    side: const BorderSide(
                                      color: Color(0xff5FB4DB),
                                    ),
                                  ),
                                  child: const Text(
                                    'Lihat Destinasi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff5FB4DB),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: placeList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

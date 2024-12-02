import 'package:flutter/material.dart';
import 'package:travel_app_v2/models/place.dart';

class DestinationDetailPage extends StatelessWidget {
  final Place destinationDetail;

  const DestinationDetailPage({super.key, required this.destinationDetail});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.of(context).size.width > 800) {
          return WebDestinationDetailPage(
            destinationDetail: destinationDetail,
          );
        } else {
          return MobileDestinationDetailPage(
            destinationDetail: destinationDetail,
          );
        }
      },
    );
  }
}

class MobileDestinationDetailPage extends StatefulWidget {
  final Place destinationDetail;

  const MobileDestinationDetailPage(
      {super.key, required this.destinationDetail});

  @override
  State<MobileDestinationDetailPage> createState() =>
      _MobileDestinationDetailPageState();
}

class _MobileDestinationDetailPageState
    extends State<MobileDestinationDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF6F7F9),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xffA8A8A7),
              ),
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 120,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffA8A8A7).withOpacity(0.2),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            widget.destinationDetail.image,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.destinationDetail.city,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Color(0xff1B4084),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 28,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        widget.destinationDetail.rating,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.cloud,
                                        color: Color(0xffA8A8A7),
                                        size: 28,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        '${widget.destinationDetail.weather}°C',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Color(0xffA8A8A7),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.airplanemode_active,
                                        color: Color(0xffA8A8A7),
                                        size: 28,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        '${widget.destinationDetail.flightTime} Jam',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Color(0xffA8A8A7),
                                        ),
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
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                      controller: _tabController,
                      labelColor: const Color(0xff5FB4DB),
                      unselectedLabelColor: const Color(0xffA8A8A7),
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: UnderlineTabIndicator(
                        borderSide: const BorderSide(
                            width: 5.0, color: Color(0xff5FB4DB)),
                        borderRadius: BorderRadius.circular(20),
                        insets: const EdgeInsets.symmetric(
                          horizontal: 95,
                          vertical: -6,
                        ),
                      ),
                      tabs: const [
                        Text(
                          'Tentang',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Ikon Kota',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: TabBarView(controller: _tabController, children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Text(
                          widget.destinationDetail.cityDesc,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffA8A8A7)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Text(
                          widget.destinationDetail.iconDesc,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffA8A8A7)),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Color(0xff1B4084),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kisaran Harga',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffA8A8A7),
                      ),
                    ),
                    Text(
                      'Rp ${widget.destinationDetail.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffDEF1FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Text(
                        'Lanjutkan',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xff5FB4DB),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WebDestinationDetailPage extends StatefulWidget {
  final Place destinationDetail;

  const WebDestinationDetailPage({super.key, required this.destinationDetail});

  @override
  State<WebDestinationDetailPage> createState() =>
      _WebDestinationDetailPageState();
}

class _WebDestinationDetailPageState extends State<WebDestinationDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  width: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffA8A8A7).withOpacity(0.2),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 14,
                      ),
                      Text(
                        'Kembali',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ), // For MainAxisAlignment
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(1, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(widget.destinationDetail.image),
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffA8A8A7).withOpacity(0.2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.destinationDetail.city,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              color: Color(0xff1B4084),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 28,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    widget.destinationDetail.rating,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.cloud,
                                    color: Color(0xffA8A8A7),
                                    size: 28,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '${widget.destinationDetail.weather}°C',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xffA8A8A7),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.airplanemode_active,
                                    color: Color(0xffA8A8A7),
                                    size: 28,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '${widget.destinationDetail.flightTime} Jam',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xffA8A8A7),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffA8A8A7).withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
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
                                  horizontal: 95,
                                  vertical: -6,
                                ),
                              ),
                              tabs: const [
                                Text(
                                  'Tentang',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Ikon Kota',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ]),
                          const SizedBox(height: 15),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 3 - 80,
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                                  SingleChildScrollView(
                                    child: Text(
                                      widget.destinationDetail.cityDesc,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xffA8A8A7),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Text(
                                      widget.destinationDetail.iconDesc,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xffA8A8A7),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width / 2,
            height: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Color(0xff1B4084),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kisaran Harga',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffA8A8A7),
                      ),
                    ),
                    Text(
                      'Rp ${widget.destinationDetail.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffDEF1FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Text(
                      'Lanjutkan',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff5FB4DB),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

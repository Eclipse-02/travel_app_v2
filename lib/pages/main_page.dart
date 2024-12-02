import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_v2/pages/home_page.dart';
import 'package:travel_app_v2/pages/location_page.dart';
import 'package:travel_app_v2/pages/profile_page.dart';
import 'package:travel_app_v2/pages/search_page.dart';

PageController pageController = PageController();
SideMenuController sideMenu = SideMenuController();

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List pages = [
    const HomePage(),
    const SearchPage(),
    const LocationPage(),
    const ProfilePage(),
  ];

  final List items = [
    SideMenuItem(
      title: 'Home',
      onTap: (index, _) {
        sideMenu.changePage(index);
      },
      icon: const Icon(Icons.home),
    ),
    SideMenuItem(
      title: 'Search',
      onTap: (index, _) {
        sideMenu.changePage(index);
      },
      icon: const Icon(Icons.search_outlined),
    ),
    SideMenuItem(
      title: 'Location',
      onTap: (index, _) {
        sideMenu.changePage(index);
      },
      icon: const Icon(Icons.pin_drop),
    ),
    SideMenuItem(
      title: 'Profile',
      onTap: (index, _) {
        sideMenu.changePage(index);
      },
      icon: const Icon(Icons.person),
    ),
  ];

  @override
  void initState() {
    // Connect SideMenuController and PageController together
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: MediaQuery.of(context).size.width < 800
          ? SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: BottomNavigationBar(
                selectedFontSize: 0,
                elevation: 100,
                iconSize: 34,
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color(0xffA8A8A7).withOpacity(0.2),
                selectedItemColor: const Color(0xff1B4084),
                unselectedItemColor: const Color(0xffA8A8A7).withOpacity(0.5),
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search_outlined), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.pin_drop), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SideMenu(
                  controller: sideMenu,
                  title: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svgs/Logo.svg',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'TravelApp',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(
                              width: double.infinity,
                              child: Divider(),
                            )
                          ],
                        )),
                  ),
                  items: items,
                  style: SideMenuStyle(
                    displayMode: SideMenuDisplayMode.auto,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                    )),
                    openSideMenuWidth: 200,
                    compactSideMenuWidth: 40,
                    hoverColor: const Color(0xffA8A8A7).withOpacity(0.3),
                    selectedColor: const Color(0xff1B4084),
                    selectedIconColor: const Color(0xffDEF1FF),
                    unselectedIconColor:
                        const Color(0xffA8A8A7).withOpacity(0.5),
                    backgroundColor: const Color(0xffA8A8A7).withOpacity(0.2),
                    selectedTitleTextStyle:
                        const TextStyle(color: Color(0xffDEF1FF)),
                    unselectedTitleTextStyle:
                        const TextStyle(color: Colors.black54),
                    iconSize: 24,
                    itemBorderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    showTooltip: true,
                    showHamburger: false,
                    itemHeight: 50.0,
                    itemInnerSpacing: 8.0,
                    itemOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                    toggleColor: Colors.black54,
                  ),
                  footer: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'By Rafa Umar Abdus Syakur',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: [
                      pages[0],
                      pages[1],
                      pages[2],
                      pages[3],
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

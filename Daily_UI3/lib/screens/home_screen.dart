import 'package:daily_ui3/screens/bezier_curve.dart';
import 'package:daily_ui3/widgets/blue_container.dart';
import 'package:daily_ui3/widgets/menu.dart';
import 'package:daily_ui3/widgets/features.dart';
import 'package:daily_ui3/widgets/friends.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  late TabController _tabController = TabController(length: 6, vsync: this);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          bottom: TabBar(
            controller: _tabController,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 0.0, color: Colors.transparent),
            ),
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            tabs: const [
              Text(
                'HOME',
                style: TextStyle(
                  fontSize: 10.0
                ),
              ),
              Text(
                'ABOUT',
                style: TextStyle(
                    fontSize: 10.0
                ),
              ),
              Text(
                'SERVICE',
                style: TextStyle(
                    fontSize: 10.0
                ),
              ),
              Text(
                'PROJECT',
                style: TextStyle(
                    fontSize: 10.0
                ),
              ),
              Text(
                'CONTACT',
                style: TextStyle(
                    fontSize: 10.0
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
                child: const BezierCurve()
            ),
            const SizedBox(height: 20),
            Container(
              height: 310,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'What features are there?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]
                    ),
                  ),
                  Text(
                    'Please subscribe',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Feature(
                        icon: Icon(
                          Icons.alarm_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        checkedIcon: Icon(
                            Icons.alarm_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 15),
                      Feature(
                        icon: Icon(
                            Icons.bedtime_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        checkedIcon: Icon(
                            Icons.bedtime_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 15),
                      Feature(
                        icon: Icon(
                            Icons.bookmarks_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        checkedIcon: Icon(
                            Icons.bookmarks_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const BlueContainer(),
            const Friends(),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(height: 10),
            const MenuContents()
          ],
        ),
      ),
    );
  }
}

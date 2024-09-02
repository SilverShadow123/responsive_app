import 'package:flutter/material.dart';
import 'package:responsive_app/presentation/widgets/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerRight,
            child: const Text(
              'HUMMING \nBIRD.',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        drawer: buildDrawer(),
        body: buildbody(),
      ),
      desktop: Scaffold(
        appBar: buildAppBartabdesk(),
        body:  buildbody1(),
      ),
      tablet: Scaffold(
        appBar: buildAppBartabdesk(),
        body:  buildbody2(),
      ),
    );
  }

  AppBar buildAppBartabdesk() {
    return AppBar(
        title: const Text(
          'HUMMING BIRD.',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Episodes',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'About',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 16),
        ],
      );
  }

  Widget buildbody() {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'FLUTTER WEB. THE BASICS',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover founctionally, Modals and more',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Join Course',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }

  Widget buildbody1() {
    return  GridView.count(
    
          crossAxisCount: 2,

          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'FLUTTER WEB. THE BASICS',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover founctionally, Modals and more',
                    style: TextStyle(fontSize: 16),
                  ),],),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Join Course',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )
              ],
            );


  }
  Widget buildbody2() {
    return  Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB. THE BASICS',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover founctionally, Modals and more',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Join Course',
                  style: TextStyle(color: Colors.white),
                ))
          ],
      ),
    );
  }

  Widget buildDrawer() {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.greenAccent,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SKILL UP NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'TAP HERE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.video_library),
          title: const Text('Episodes'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('About'),
          onTap: () {},
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sahabat_donasi/constant/color_palette.dart';
import 'package:sahabat_donasi/model/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  // final SharedPreferences prefs;
  final List<OnboardingModel> pages = [
    OnboardingModel(
      icon: "assets/onboarding.png",
      title: "Komunitas Area",
      description: "Forum interaksi sesama anggota komunitas",
    ),
    OnboardingModel(
      icon: "assets/onboarding1.png",
      title: "Info Motoran",
      description:
          "Berita tentang kegiatan dan info seputar komunitas motor",
    ),
    OnboardingModel(
      icon: "assets/onboarding2.png",
      title: "Geo Location",
      description: "Share Location member terdekat dan tempat kongkow",
    ),
    OnboardingModel(
      icon: "assets/onboarding3.png",
      title: "Panic Button",
      description: "Emergency Call pada saat terjadi accident atau membutuhkan pertolongan terdekat",
    ),
  ];

  // OnboardingScreen({this.prefs});
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper.children(
        autoplay: false,
        index: 0,
        loop: false,
        pagination: new SwiperPagination(
          margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
          builder: new DotSwiperPaginationBuilder(
              color: Colors.grey,
              activeColor: ColorPalette.btnNewColor,
              size: 6.5,
              activeSize: 8.0),
        ),
        control: SwiperControl(
          iconPrevious: null,
          iconNext: null,
        ),
        children: _getPages(context),
      ),
    );
  }

  List<Widget> _getPages(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < widget.pages.length; i++) {
      OnboardingModel page = widget.pages[i];
      widgets.add(
        new Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image(image: AssetImage(page.icon), width: 300, height: 300,),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                child: Text(
                  page.title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  page.description,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: page.extraWidget,
              )
            ],
          ),
        ),
      );
    }
    widgets.add(
      new Container(
        color:  Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250.0,
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                "assets/onboarding4.png",
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, right: 15.0, left: 15.0),
              child: Text(
                "Selamat Bergabung!",
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Aplikasi yang memudahkan para member YNCI dan komunitas motor untuk berinteraksi dan bertransaksi dengan mudah, aman dan terpercaya",
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Yudi Kusuma",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Founder YNCI",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 16.0, left: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
                  // Navigator.push(context,
                  //     new MaterialPageRoute(builder: (context) {
                  //   return LoginPage();
                  // }));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: ColorPalette.btnNewColor
                      ),
                  child: Center(
                      child: Text(
                    "Selanjutnya",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return widgets;
  }
}
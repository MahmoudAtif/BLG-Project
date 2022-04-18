import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBanner {
  final String url;

  AppBanner(this.url);
}

List<AppBanner> appBannerList = [
  AppBanner(
      "https://www.emaratalyoum.com/polopoly_fs/1.1506342.1624563571!/image/image.jpg"),
  AppBanner(
      "https://ichef.bbci.co.uk/news/640/amz/worldservice/live/assets/images/2015/07/23/150723124441_leb_624x351_ap.jpg"),
  AppBanner(
      "https://hyatok.com/mwfiles/thumbs/fit630x300/10746/1612085586/%D8%A8%D8%AD%D8%AB_%D8%B9%D9%86_%D8%A7%D8%B7%D9%81%D8%A7%D9%84_%D8%A7%D9%84%D8%B4%D9%88%D8%A7%D8%B1%D8%B9_%D9%81%D9%89_%D9%85%D8%B5%D8%B1.jpeg"),
];

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 22.0 : 8,
      height: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? Color(0xffffa726) : Colors.grey),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "History",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Color(0xffffa726),
              //     borderRadius: BorderRadius.circular(15),
              //     boxShadow: const [
              //       BoxShadow(
              //         color: Colors.grey,
              //         blurRadius: 2.0,
              //         offset: Offset(1, 5),
              //       ),
              //     ],
              //     image: const DecorationImage(
              //         fit: BoxFit.cover,
              //         image: NetworkImage(
              //             'https://c0.wallpaperflare.com/preview/413/279/829/green-leaf-with-white-background.jpg')),
              //   ),
              //   width: double.infinity,
              //   height: 100,
              //   child: Padding(
              //     padding: const EdgeInsets.all(20.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           'Violation Type',
              //           style: TextStyle(
              //             fontSize: 18,
              //             // fontWeight: FontWeight.bold,
              //             color: Colors.black,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 18,
              //         ),
              //         Row(
              //           children: [
              //             Text(
              //               'Date: 20/10/2022',
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 color: Colors.black,
              //               ),
              //             ),
              //             Spacer(),
              //             Text(
              //               'Status',
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 color: Colors.red,
              //               ),
              //             ),
              //           ],
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              ListView.separated(
                shrinkWrap: true,
                //بيخلي الاسكرول يوقف عشان السكرول بتاع الكولمن كلو يشتغل
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Violations(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 15,
                ),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /////////////////////////////

  Widget Violations() => Container(
        decoration: BoxDecoration(
          color: Color(0xffffa726),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              offset: Offset(1, 5),
            ),
          ],
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://gorillapdf.com/blog/15-tips-to-go-paperless-at-work/protect-the-environment-by-going-paperless.png')),
        ),
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Violation Type',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Text(
                    'Date: 20/10/2022',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}

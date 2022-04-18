import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/shared.component/components.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  // ignore: prefer_typing_uninitialized_variables
  var dropvalue;
  var description = TextEditingController();
  List listitem = [
    "مخالفات المرور",
    "الحوادث",
    "مخالفات الطرق )الحفر – العوائق(",
    "مخالفات البناء",
    "مخالفات البناء",
    "اعمدة االناره",
    "الحاالت االنسانيه ) اطفال الشوارع – الضالين(",
    "مياة االمطار"
  ];
  List Governorate = [
    "محافظة القاهرة",
    "الجيزة",
    "الأسكندرية",
    "الدقهلية",
    "الشرقية",
    "المنوفية",
    "القليوبية",
    "البحيرة",
    "الغربية",
    "بور سعيد",
    "دمياط",
    "الإسماعلية",
    "السويس",
    "كفر الشيخ",
    "الفيوم",
    "بني سويف",
    "مطروح",
    "شمال سيناء",
    "جنوب سيناء",
    "المنيا",
    "أسيوط",
    "سوهاج",
    "قنا",
    "البحر الأحمر",
    "الأقصر",
    "أسوان",
    "الواحات",
    "الوادي الجديد"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(),
        // backgroundColor: const Color(0xff0D47A1),
        backgroundColor: Color(0xffffa726),
        title: const Text('Report a Violation'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.of(context).pushNamed("history");
            },
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: AssetImage("assets/LLL.jpg"),
                width: 200,
                height: 200,
              ),
              // Problem Types
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: DropdownButton(
                    value: dropvalue,
                    isExpanded: true,
                    underline: SizedBox(),
                    onChanged: (dynamic value) {
                      setState(() {
                        dropvalue = value;
                      });
                    },
                    hint: const Text("Select a violation"),
                    items: listitem.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Governorate
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: DropdownButton(
                    value: dropvalue,
                    isExpanded: true,
                    underline: const SizedBox(),
                    onChanged: (dynamic value) {
                      setState(() {
                        dropvalue = value;
                      });
                    },
                    hint: const Text("Governorate"),
                    items: listitem.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // City
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: DropdownButton(
                    value: dropvalue,
                    isExpanded: true,
                    underline: const SizedBox(),
                    onChanged: (dynamic value) {
                      setState(() {
                        dropvalue = value;
                      });
                    },
                    hint: const Text("City"),
                    items: listitem.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Location in map
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      const Expanded(flex: 8, child: Text("Location In Map")),
                      // Spacer(),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on),
                          // color: const Color(0xff0D47A1),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Description
              TextFormField(
                controller: description,
                maxLines: 3,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Description",
                ),
              ),
              // Image
              Row(
                children: [
                  const Icon(Icons.camera_alt),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Select a photo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // color: Color(0xff0D47A1),
                            color: Colors.blue,
                            fontSize: 15),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              deffaultButton(
                  TextColor: Colors.white,
                  text: "Report a Violation",
                  function: () {}),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

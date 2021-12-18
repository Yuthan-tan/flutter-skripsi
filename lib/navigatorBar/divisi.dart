import 'package:flutter/material.dart';

class Divisi extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<Divisi> {
  // Title List Here
  var titleList = [
    "Yenilia",
    "Yuthan Jufandri",
    "Dhika Ara",
    "Andi",
    "Ferdian",
    "Rangga",
    "Sandy Yudha",
    "Rifqi Rifqullah",
    "Varendra Navarisma",
    "Galih"
  ];

  // Description List Here
  var descList = [
    "Divisi Direktur di sebuah PT Loka Indira Amarta.",
    "Freelance Divisi Event Organizer di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Event Organizer di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Event Organizer di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Desain Grafis di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Desain Grafis di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Admin di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Admin di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Desain Grafis di sebuah PT Loka Indira Amarta.",
    "Pegawai Divisi Admin di sebuah PT Loka Indira Amarta."
  ];

  // Image Name List Here
  var imgList = [
    "assets/images/yenilia.jpg",
    "assets/images/yuthan1.jpg",
    "assets/images/dika.jpg",
    "assets/images/andi.jpg",
    "assets/images/ferdian.jpg",
    "assets/images/rangga.jpg",
    "assets/images/sandy.jpg",
    "assets/images/tevhe.jpg",
    "assets/images/varendra.jpg",
    "assets/images/galih.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        // App Bar
        title: Text(
          "Divisi Pegawai PT Loka Indira",
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            descList[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// This is a block of Model Dialog
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

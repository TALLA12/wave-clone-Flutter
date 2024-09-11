import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:waveclone/screens/QrScan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A2BE2),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF8A2BE2),
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Column(children: [
              Icon(
                Icons.settings,
                color: Colors.white,
                size: 30.0,
              ),
            ]),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.visibility,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                )),
            pinned: true,
            expandedHeight: 2,
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 500,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -70,
              right: 15,
              left: 15,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QRScannerApp()),
                  );
                },
                child: Container(
                  height: 180,
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("images/wave.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Color(0xFF8A2BE2),
                            size: 50,
                          ),
                        ),
                        Text(
                          "Transfert",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFFDFFB6),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            FontAwesomeIcons.shoppingBasket,
                            color: Color(0xFFFB8500),
                            size: 45,
                          ),
                        ),
                        Text(
                          "Paiement",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFE0FBFC),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            Icons.phone_android,
                            color: Color(0xFF7BDFF2),
                            size: 45,
                          ),
                        ),
                        Text(
                          "Paiement",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFE5D9),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            FontAwesomeIcons.university,
                            color: Color(0xFFF45B69),
                            size: 45,
                          ),
                        ),
                        Text(
                          "Banque",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFCAFFBF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            FontAwesomeIcons.gift,
                            color: Color(0xFF04E762),
                            size: 35,
                          ),
                        ),
                        Text(
                          "Cadeaux",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    height: 160,
                    width: double.infinity,
                    color: Color(0xFFE9ECEF),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.download,
                            color: Colors.green,
                            size: 50,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nouvelle mise a jour !",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text("Une nouvelle version de"),
                              Text("l'application est disponible."),
                              Text("Cliquer ici pour telecharger."),
                              Row(
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 200,
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Retrait",
                              style: TextStyle(
                                  color: Color(0xFF8A2BE2),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("30 mai,02:05"),
                          ],
                        ),
                        Text(
                          "-1.000F",
                          style: TextStyle(
                              color: Color(0xFF8A2BE2),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }
}

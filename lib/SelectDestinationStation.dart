import 'package:flutter/material.dart';
import 'package:setram/NoQrCodeDetected.dart';
import 'package:setram/ScanQrCode.dart';
import 'package:setram/SelectDestination.dart';

class SelectDestinationStation extends StatefulWidget {
  const SelectDestinationStation({Key? key}) : super(key: key);

  @override
  State<SelectDestinationStation> createState() =>
      _SelectDestinationStationState();
}

class _SelectDestinationStationState extends State<SelectDestinationStation> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    String title = "University of Science and Technology Houari Boumediene";
    String description =
        "This should be a small description about the place so i will fill it later on with more informations This should be a small description about the place so i will fill it later on with more informations";
    var StationsList = [
      "Ruisseau",
      "Les Fusiilés",
      "Tripoli-Thaalibia",
      "Tripoli-Mosquée",
      "Tripoli-Hamadache",
      "Tripoli-maqqaria",
      "Caroubier",
      "La Glacière",
      "Pont El Harrach",
      "BelleVue",
      "Bekri Bougerra",
      "Cinq Maisons",
      "Foire d'Alger",
      "Les Pins",
      "Tamaris",
      "Cité Mokhtar Zerhouni",
      "Cité Rabia Tahar",
      "Université de BabEzzouar",
      "Cité 5 Juillet",
      "Bab Ezzouar-Le pont",
      "Cité Universitaire Cube1",
      "Cité 8 Mai 1945",
      "Cité Clair Matin",
      "Bordj El Kiffan Lycée",
      "Bordj El Kiffan Centre",
      "Bordj El Kiffan Polyclinique",
      "Mouhous",
      "Mimouni Mahmoud",
      "Ben Merabet",
      "Ben Redouane",
      "Ben Mered",
      "Sidi Dris",
      "Ben Zerga",
      "Ben Zerga",
      "Café Chergui",
      "Faculté Biomédicale",
      "Cité Diplomatique",
      "Dergana centre",
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 24.0,
            left: 24.0,
            top: 32.0,
            bottom: 20.0,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.1,
                    height: height * 0.053,
                    decoration: BoxDecoration(
                      color: const Color(0x338ECAE6),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.166,
                  ),
                  const Text(
                    "Destination",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.164,
                  ),
                  Container(
                    width: 57,
                    height: 57,
                    child: IconButton(
                      onPressed: () {
                        //temp to check the noQrCodeDetected page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NoQrCode(),
                            ));
                      },
                      icon: ClipOval(
                        child: Image.asset(
                          'images/userPic.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 17.0),
                width: width * 0.9,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(37.0),
                  child: Image.asset(
                    'images/Dest2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff302F2F),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12.0,
                    color: Color(0xff88879C),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Choose a departure \nstation from the list",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: width * 0.8,
                height: width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xffffffff),
                  border: Border.all(
                    color: const Color(0xff302F2F),
                    width: 2,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: width * 0.55,
                height: width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: const Color(0xffffffff),
                  border: Border.all(
                    color: const Color(0xff302F2F),
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const selectDestination(),
                                  ));
                            },
                            icon: const Icon(Icons.qr_code_rounded,
                                color: Color(0x80302F2F)),
                          ),
                          const Text(
                            "Qr Code",
                            style: TextStyle(
                              color: Color(0x80302F2F),
                              fontFamily: "Poppins",
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1.0,
                      color: Color(0xff302F2F),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const selectDestination(),
                                  ));
                            },
                            icon: const Icon(Icons.list_alt_rounded,
                                color: Color(0xff302F2F)),
                          ),
                          const Text(
                            "Station",
                            style: TextStyle(
                              color: Color(0xff302F2F),
                              fontFamily: "Poppins",
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

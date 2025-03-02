import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> categories = [
    {'name': 'ডাক্তার', 'icon': 'assets/icons/doctor.png'},
    {'name': 'হাসপাতাল', 'icon': 'assets/icons/hospital.png'},
    {'name': 'বাসের সময়সূচি', 'icon': 'assets/icons/bus.png'},
    {'name': 'ট্রেনের সময়সূচি', 'icon': 'assets/icons/train.png'},
    {'name': 'ফায়ার সার্ভিস', 'icon': 'assets/icons/fire_service.png'},
    {'name': 'থানা-পুলিশ', 'icon': 'assets/icons/thana_polish.png'},
    {'name': 'রক্ত', 'icon': 'assets/icons/blood.png'},
    {'name': 'ডায়াগনস্টিক সেন্টার', 'icon': 'assets/icons/diagnostics.png'},
    {'name': 'বাসা ভাড়া', 'icon': 'assets/icons/house_rent.png'},
    {'name': 'শপিং', 'icon': 'assets/icons/shopping.png'},
    {'name': 'কুরিয়ার সার্ভিস', 'icon': 'assets/icons/courier_service.png'},
    {'name': 'বিদ্যুৎ অফিস', 'icon': 'assets/icons/biddut_office.png'},
    {'name': 'হোটেল', 'icon': 'assets/icons/hotel.png'},
    {'name': 'গাড়ি ভাড়া', 'icon': 'assets/icons/vehicle_rent.png'},
    {'name': 'মিস্ত্রি', 'icon': 'assets/icons/technicians.png'},
    {'name': 'দৈনিক সংবাদ', 'icon': 'assets/icons/todaynews.png'},
    {'name': 'পার্লার-সেলুন', 'icon': 'assets/icons/salon_parlour.png'},
    {'name': 'রেস্টুরেন্ট', 'icon': 'assets/icons/restaurants.png'},
    {'name': 'ফ্লাট ও জমি', 'icon': 'assets/icons/plot_sales.png'},
    {'name': 'নার্সারি', 'icon': 'assets/icons/nursery.png'},
    {'name': 'শিক্ষক', 'icon': 'assets/icons/teacher.png'},
    {'name': 'শিক্ষা প্রতিষ্ঠান', 'icon': 'assets/icons/institutions.png'},
    {'name': 'দর্শনীয় স্থান', 'icon': 'assets/icons/tourist_place.png'},
    {'name': 'চাকরি', 'icon': 'assets/icons/job.png'},
    {'name': 'উদ্যোক্তা', 'icon': 'assets/icons/entrepreneur.png'},
    {'name': 'জরুরী সেবা', 'icon': 'assets/icons/emergency.png'},
    {'name': 'ওয়েব সাইট', 'icon': 'assets/icons/website.png'},
    {'name': 'ভিডিও', 'icon': 'assets/icons/videos.png'},
    {'name': 'প্যাকেজ ', 'icon': 'assets/icons/packege.png'},
    {'name': 'সাপোর্ট ', 'icon': 'assets/icons/support.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEAFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 8 / 9,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                print('Clicked on ${category['name']}');
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    //builder: (context) => WordsScreen(category: category['name']),
                    builder: (context) => VocabularyScreen(topic: topics[index],icon: topics[index].icon,),
                  ),
                );*/
              },
              child: Card(
                elevation: 2,
                // color: Color(0xFF03a9ff),//Color(0xFF00aeef),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        category['icon'],
                        width: 45,
                        // height: 40,
                      ),
                      SizedBox(height: 4),
                      Text(category['name'], style: TextStyle(fontSize: 13),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



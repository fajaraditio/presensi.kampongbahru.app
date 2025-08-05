// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final String userName = "Aditio Fajar";
  final String userRole = "IT Fullstack Developer";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final today =
        DateFormat('EEE, dd MMM yyyy', 'id_ID').format(DateTime.now());
    const shiftTime = "09.00 - 18.00";

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child:
                Image.asset("assets/logo-h.png", height: 32), // your logo icon
          )
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selamat Pagi,",
                style: TextStyle(fontSize: 14, color: Colors.black54)),
            Text(userName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(userRole,
                style: TextStyle(fontSize: 12, color: Colors.black45)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Jadwal Shift
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFEADF),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jadwal Shift Pagi"),
                      SizedBox(height: 4),
                      Text(today,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(shiftTime,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE34F00),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text("Check In"),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Riwayat Kehadiran",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: Text("Lihat Semua"))
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jumat, 25 Juli 2025",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Color(0xFFE34F00), size: 16),
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              "Sedayu City Kelapa Gading, SCBRF 37, Kelapa Gading, Jakarta",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text("Check In: 09.00  |  Check Out: 18.00",
                          style: TextStyle(fontSize: 13)),
                      Divider()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFE34F00),
        unselectedItemColor: Colors.black54,
        currentIndex: 0,
        onTap: (i) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.request_page), label: "Request Off"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profil Saya"),
        ],
      ),
    );
  }
}

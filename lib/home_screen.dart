import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1D7381),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Quran"),
          BottomNavigationBarItem(icon: Icon(Icons.mosque), label: "Prayer"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            // HEADER BOX WITH GRADIENT
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x661DB1BD), // #1DB1BD66
                    Color(0xFF1D7381), // #1D7381
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "14:01",
                    style: TextStyle(color: Colors.white, fontSize: 38),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "10 Ramadhan 1446 H",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.location_on, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        "Sumedang, West Java",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // PRAYER TIME ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _PrayerItem("Subuh", "04:37", Icons.dark_mode),
                      _PrayerItem("Fajr", "05:50", Icons.wb_sunny),
                      _PrayerItem("Dzuhur", "12:05", Icons.wb_sunny_outlined),
                      _PrayerItem("Ashr", "15:18", Icons.sunny_snowing),
                      _PrayerItem("Maghrib", "18:13", Icons.nightlight_round),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // CONTENT BELOW
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // CARD LAST READ
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 6,
                            spreadRadius: 1,
                            color: Colors.black12,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Last Read",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Al Baqarah : 120  (Juz 1)",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.bookmark,
                                color: Color(0xFF1D7381),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // QUICK ACTIONS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _QuickButton(
                          icon: Icons.explore,
                          text: "Locate\nQibla",
                        ),
                        _QuickButton(
                          icon: Icons.mosque,
                          text: "Find nearest\nMosque",
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // DAILY ACTIVITY
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Daily Activity",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          "Complete the daily activity checklist",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 10),

                        // PROGRESS + CHECKLIST SAMPLE
                        LinearProgressIndicator(
                          value: 0.5,
                          backgroundColor: Colors.grey[300],
                          valueColor: const AlwaysStoppedAnimation(
                            Color(0xFF1D7381),
                          ),
                        ),

                        const SizedBox(height: 20),

                        const _ActivityItem("Alms", 4, 10),
                        const _ActivityItem("Recite the Al Quran", 8, 10),

                        const SizedBox(height: 20),

                        // BUTTON
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D7381),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Go to Checklist",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ------- SMALL WIDGETS BELOW -----------

class _PrayerItem extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;

  const _PrayerItem(this.title, this.time, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(color: Colors.white)),
        Text(time, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

class _QuickButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const _QuickButton({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 28, color: const Color(0xFF1D7381)),
          const SizedBox(height: 6),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class _ActivityItem extends StatelessWidget {
  final String name;
  final int done;
  final int total;

  const _ActivityItem(this.name, this.done, this.total);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: const TextStyle(fontSize: 16)),
        Text("$done/$total"),
      ],
    );
  }
}

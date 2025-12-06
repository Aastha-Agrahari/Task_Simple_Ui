import 'package:flutter/material.dart';
import 'package:task_simple_ui/login/login_screen.dart';
import 'package:lottie/lottie.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome ✨", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2E2D9C), Color(0xFF4A4AB7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2E2D9C), Color(0xFF3F3FB2), Color(0xFF4A4AB7)],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// 🔥 Lottie Welcome Animation (Premium look)
            Lottie.network(
              "https://assets10.lottiefiles.com/packages/lf20_qp1q7mct.json",
              height: 170,
            ),

            const SizedBox(height: 10),

            const Text(
              "You are Logged In 🎉",
              style: TextStyle(
                  fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
            ),

            const SizedBox(height: 30),

            /// 💎 Feature Quick Cards
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _featureCard(Icons.person, "Profile"),
                _featureCard(Icons.settings, "Settings"),
                _featureCard(Icons.favorite, "Favorites"),
                _featureCard(Icons.notifications, "Notifications"),
              ],
            ),

            const SizedBox(height: 50),

            /// 🚪 Logout Button (Bottom CTA style)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                      (route) => false,
                );
              },
              icon: const Icon(Icons.logout, color: Color(0xFF2E2D9C)),
              label: const Text(
                "Logout",
                style: TextStyle(
                    color: Color(0xFF2E2D9C),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Card Widget
  Widget _featureCard(IconData icon, String title) {
    return Container(
      width: 135,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 38, color: Color(0xFF2E2D9C)),
          const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF2E2D9C))),
        ],
      ),
    );
  }
}
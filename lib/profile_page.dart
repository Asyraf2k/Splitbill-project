import 'package:flutter/material.dart';

class JiwaPlusLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jiwa+'),
        backgroundColor: Colors.red.shade800,
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ASYRAF',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('6285156048105'),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade800,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text('Undang teman dan dapatkan Voucher 50%'),
            ),
            SizedBox(height: 32),
            _buildMenuButton(
              icon: Icons.subscriptions_outlined,
              label: 'Subscription',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.local_shipping_outlined,
              label: 'Riwayat Pesanan',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.location_on_outlined,
              label: 'Alamat Tersimpan',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.card_giftcard,
              label: 'Voucher',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.card_membership,
              label: 'Loyalty Membership',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.group_add_outlined,
              label: 'Referral',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.headset_mic_outlined,
              label: 'Jiwa Care',
              onTap: () {},
            ),
            _buildMenuButton(
              icon: Icons.lock_outline,
              label: 'Kebijakan Privasi',
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Pesanan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildMenuButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: Colors.grey.shade600),
            SizedBox(width: 16),
            Text(label),
            Spacer(),
            Icon(Icons.arrow_forward_ios,
                size: 18, color: Colors.grey.shade600),
          ],
        ),
      ),
    );
  }
}

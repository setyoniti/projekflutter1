import 'package:flutter/material.dart';

void main() => runApp(RestaurantApp());

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestaurantMenu(),
    );
  }
}

class RestaurantMenu extends StatelessWidget {
  void _showNotImplementedMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SemRestauran'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.detik.com%2Fjabar%2Fkuliner%2Fd-6755476%2Fjangan-lama-lama-di-restoran-ternyata-ada-batas-waktunya&psig=AOvVaw1WA3wrh3pyNLJh1tR4IwO0&ust=1696657381965000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjtubbb4IEDFQAAAAAdAAAAABAE'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          _showNotImplementedMessage(context);
                        },
                        child: Icon(Icons.email),
                      ),
                      SizedBox(width: 16.0),
                      InkWell(
                        onTap: () {
                          _showNotImplementedMessage(context);
                        },
                        child: Icon(Icons.phone),
                      ),
                      SizedBox(width: 16.0),
                      InkWell(
                        onTap: () {
                          _showNotImplementedMessage(context);
                        },
                        child: Icon(Icons.location_on),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Deskripsi Restoran:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center, 
                  ),
                  Text(
                    'Restoran kami menyajikan berbagai macam masakan lezat dari berbagai belahan dunia. Nikmati suasana yang nyaman dan pelayanan yang ramah di restoran kami.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center, 
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Menu Makanan:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center, 
                  ),
                  Text(
                    '1. Steak - Rp. 550,000\n'
                    '2. Pizza - Rp. 150,000\n'
                    '3. Salad - Rp. 55,000\n'
                    '4. Spaghetti - Rp. 250,000\n'
                    '5. Sea Food - Rp. 700,000',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center, 
                  ),
                ],
              ),
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
                Icon(Icons.access_time),
                SizedBox(width: 8.0),
                Text(
                  'Jam Buka: Senin - Minggu, 08.00 - 22.00',
                  textAlign: TextAlign.center, 
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

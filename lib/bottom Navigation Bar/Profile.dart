import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffDAD3C8),
        title: Text("Profile"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
                'https://www.google.com/search?q=profile&sxsrf=ALiCzsYkoaZSs_pCv_LIFjdfwPx15GGDBw:1656857129793&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiptajl8dz4AhUZ_RoKHe-GD5gQ_AUoAXoECAIQAw&biw=1485&bih=989&dpr=1.13#imgrc=wC6uGhWb4UCb7M'),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('Razan Alabdulkarim'),
              subtitle: Text('Email: Razankr21@gmail.come'),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Text(
            'Android Developer',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        const SizedBox(height: 30),
        const CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage("assets/images/demo.jpg"),
        ),
        const SizedBox(height: 30),
        const Text(
          'Rutuja Khaire',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                    _launchUrl("mailto:rutuja.khaire19@vit.edu");
                  },
                  color: Colors.grey[50],
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'rutuja.khaire19@vit.edu',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.school),
                    onPressed: () {
                      _launchUrl("https://www.vit.edu/");
                    },
                    color: Colors.grey[50]),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'VIT, Pune',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.location_on),
                    onPressed: () {
                      _launchUrl("https://maps.app.goo.gl/8NtwbTDoLYwGDuiSA");
                    },
                    color: Colors.grey[50]),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Maharashtra',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: const Icon(Icons.phone),
                    onPressed: () {
                      _launchUrl("tel:+9762921335");
                    },
                    color: Colors.grey[50]),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '9762921335',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            )
          ]),
        )
      ],
    );
  }

  _launchUrl(_url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw "Could not open $_url";
    }
  }
}

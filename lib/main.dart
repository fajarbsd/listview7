import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "List View",
    home: Home(),
  ));
}

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Daftar Tutorial"),
      ),
      body: ListView(
        children: const <Widget>[
          ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/640px-HTML5_logo_and_wordmark.svg.png",
              judul: "HTML"),
          ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1200px-CSS3_logo_and_wordmark.svg.png",
              judul: "CSS"),
          ListTutorial(
              gambar:
                  "https://img1.pngdownload.id/20180720/bv/kisspng-javascript-logo-html-clip-art-javascript-logo-5b5188b13c2314.0304322315320700652463.jpg",
              judul: "JS"),
          ListTutorial(
              gambar:
                  "https://e7.pngegg.com/pngimages/666/502/png-clipart-brand-php-logo-computer-file-product-breeze-blue-text-thumbnail.png",
              judul: "PHP"),
          ListTutorial(
              gambar:
                  "https://img2.pngdownload.id/20180819/xv/kisspng-logo-mysql-cluster-database-oracle-corporation-macrosolution-5b7962c3aaa0d2.7413479715346817956989.jpg",
              judul: "MySQL"),
          ListTutorial(
              gambar:
                  "https://logowik.com/content/uploads/images/flutter5786.jpg",
              judul: "Flutter"),
          ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/3/3d/LaravelLogo.png",
              judul: "Laravel"),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ListTutorial({this.gambar, this.judul});

  final String? gambar;
  final String? judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                gambar!,
              ),
              width: 200.0,
            ),
            Text(
              judul!,
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
